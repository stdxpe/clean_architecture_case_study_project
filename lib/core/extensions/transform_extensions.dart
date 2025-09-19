import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:intl/intl.dart';

import 'package:case_study_clean_architecture_project/core/shared/overlays/overlay_helper.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';

/// Provides a simplified way to chain Future<Either<L, R>> operations
extension ChainEitherTransformationExtension<L, R> on Future<Either<L, R>> {
  Future<Either<L, T>> chain<T>(Future<Either<L, T>> Function(R r) f) async {
    final self = await this;
    return self.match(
      (left) => Left(left),
      (right) => f(right),
    );
  }
}

/// Calculates slide offset based on current page index
extension PageSlideDirectionExtension on int {
  Offset getPageSlideDirection(int currentIndex) {
    if (this == currentIndex) return Offset.zero;
    return this < currentIndex ? const Offset(-1, 0) : const Offset(1, 0);
  }
}

/// Returns time as "10:45 AM" format
extension FormatTime on DateTime {
  static String toAmPm() => DateFormat('h:mm a').format(DateTime.now());
}

extension OverlayStateShortExt on OverlayState {
  void show(Widget widget) => OverlayHelper.instance.show(this, widget);
  void hide() => OverlayHelper.instance.hide();
}

extension PlayAnimationSegmentsExtension on AnimationController {
  Future<void> playSegment(double from, double to, Duration duration) async {
    await animateTo(from, duration: Duration.zero);
    await animateTo(to, duration: duration);
  }
}

extension AlignmentGeometryLocator on AlignmentGeometry {
  AlignmentGeometry get location {
    if (this == Alignment.topCenter) {
      /// NOTE: alignmentY = figmaDocRef-(delta/diameter)
      return Alignment(0, AppConstants.paddings.tokenCardTopY);
    } else if (this == Alignment.bottomCenter) {
      /// NOTE: alignmentY = figmaDocRef+(delta/diameter)
      return Alignment(0, AppConstants.paddings.tokenCardBottomY);
    } else {
      return Alignment.bottomCenter;
    }
  }
}

extension CleanClassName on Object {
  String get getClassName {
    final s = toString();
    final match = RegExp("Instance of '(.+)'").firstMatch(s);
    return match?.group(1) ?? s;
  }
}

extension AppLocaleX on AppLocale {
  Locale get toLocale {
    switch (this) {
      case AppLocale.en:
        return const Locale('en');
      case AppLocale.tr:
        return const Locale('tr');
    }
  }
}

extension AppLocaleDisplayExtension on AppLocale {
  AppLocale get toggled {
    switch (this) {
      case AppLocale.en:
        return AppLocale.tr;
      case AppLocale.tr:
        return AppLocale.en;
    }
  }
}

extension AppLocaleStringX on String {
  AppLocale get toAppLocale => AppLocale.values.byName(this);
}

extension LocaleName on AppLocale {
  String get displayName {
    switch (this) {
      case AppLocale.en:
        return AppStrings.localeEnText;
      case AppLocale.tr:
        return AppStrings.localeTrText;
    }
  }
}
