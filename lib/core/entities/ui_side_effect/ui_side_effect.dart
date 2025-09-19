import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ui_side_effect.freezed.dart';

/// Immutable and type-safe Core-level Domain Entity for [Bloc]'s [UISideEffect].

@freezed
sealed class UISideEffect with _$UISideEffect {
  const factory UISideEffect.navigate(String route) = _Navigate;
  const factory UISideEffect.pop(String route) = _Pop;
  const factory UISideEffect.notifyError(String? message) = _NotifyError;
  const factory UISideEffect.notifySuccess(String? message) = _NotifySuccess;
  const factory UISideEffect.animateToNextPage() = _AnimateToNextPage;
  const factory UISideEffect.animateToTop() = _AnimateToTop;
  const factory UISideEffect.showFavoriteAnimation(bool isFavorite) =
      _ShowFavoriteAnimation;
}
