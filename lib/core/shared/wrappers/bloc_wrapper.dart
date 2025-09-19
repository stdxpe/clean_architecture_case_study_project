import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toastification/toastification.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:case_study_clean_architecture_project/core/dependency_injection/injector.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';
import 'package:case_study_clean_architecture_project/core/entities/ui_side_effect/ui_side_effect.dart';

/// Centralized and standardized wrapper for [Bloc] provide and consume.

/// Reduces repetitive [BlocListener] and [BlocBuilder] boilerplate.
/// Controls UI Side Effects for error notifications, loading overlays and navigation in a central point.
/// Offers flexibility for diverse [Freezed] Union status/states via required ’isLoading’ and ’isInitial’ mappers.
/// Displays in UI optionally with [NotificationMode] or ’showLoadingOverlay’ parameters, and direct ’isLoading’ access on [BlocWrapperBuilderCallback] for UI.

typedef BlocWrapperBuilderCallback<B extends BlocBase<S>, S> =
    Widget Function(BuildContext context, S state, B bloc, bool isLoading);

typedef BlocWrapperListenerCallback<B extends BlocBase<S>, S> =
    void Function(BuildContext context, S state, B bloc);

class BlocWrapper<B extends BlocBase<S>, S> extends StatelessWidget {
  final ProvideMode provideMode;
  final BlocWrapperBuilderCallback<B, S> builder;
  final BlocWrapperListenerCallback<B, S>? listener;
  final bool Function(S previous, S current)? listenWhen;
  final bool Function(S previous, S current)? buildWhen;
  final NotificationMode? notificationMode;
  final bool? Function(S state)? isLoading;
  final bool? Function(S state)? isInitial;
  final bool showUIOnInitial;
  final bool showLoadingOverlay;
  final Widget? loadingOverlay;
  final UISideEffect? Function(S state)? uiSideEffects;

  const BlocWrapper({
    required this.provideMode,
    required this.builder,
    required this.isLoading,
    this.isInitial,
    this.listener,
    this.listenWhen,
    this.buildWhen,
    this.notificationMode,
    this.loadingOverlay,
    this.showUIOnInitial = false,
    this.showLoadingOverlay = true,
    this.uiSideEffects,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    /// Determines how bloc instance is created or fetched to control scope and reuse.
    final _bloc = switch (provideMode) {
      ProvideMode.factory => getIt.get<B>(),
      ProvideMode.singleton => getIt.get<B>(),
      ProvideMode.lazySingleton => getIt.get<B>(),
      ProvideMode.subInstance => BlocProvider.of<B>(context),
    };

    logger.d('${Messages.ui.bloc(_bloc.hashCode)} | $provideMode');

    final _blocConsumer = BlocConsumer<B, S>(
      buildWhen: buildWhen,
      listenWhen: listenWhen,

      listener: (context, state) {
        /// Determines if the bloc is currently in initial state
        final _initialStatus = isInitial?.call(state) ?? false;

        /// Executes the page-provided listener callback for non-initial states
        if (!_initialStatus) listener?.call(context, state, _bloc);

        /// Executes the Bloc-provided [UISideEffect] actions automatically
        final _uiSideEffectsCall = uiSideEffects?.call(state);

        _uiSideEffectsCall?.whenOrNull(
          /// Performs navigation side-effects
          navigate: (route) => context.go(route),

          /// Centralizes error handling for state failures for toast/snackbar/dialog
          notifyError: (errorMessage) {
            if (errorMessage != null && errorMessage.isNotEmpty) {
              switch (notificationMode ?? NotificationMode.toast) {
                case NotificationMode.snackbar:
                  context.scaffoldMessenger
                    ..hideCurrentSnackBar()
                    ..showSnackBar(SnackBar(content: Text(errorMessage)));

                case NotificationMode.toast:
                  toastification.show(
                    context: context,
                    title: Text(errorMessage),
                    type: ToastificationType.error,
                    style: ToastificationStyle.flat,
                    autoCloseDuration: 5.seconds,
                    alignment: Alignment.topCenter,
                  );

                case NotificationMode.dialog:
                  showDialog(
                    context: context,
                    builder: (_) => AlertDialog(content: Text(errorMessage)),
                  );

                case NotificationMode.none:
                  break;
              }
            }
          },

          /// Optional success messages display
          notifySuccess: (message) {
            if (message != null && message.isNotEmpty) {
              toastification.show(
                context: context,
                title: Text(message),
                type: ToastificationType.success,
                style: ToastificationStyle.flat,
                autoCloseDuration: 5.seconds,
                alignment: Alignment.topCenter,
              );
            }
          },
        );
      },

      builder: (context, state) {
        /// Determines if the bloc is currently in initial or loading state
        final _initialStatus = isInitial?.call(state) ?? false;
        final _loadingStatus = isLoading?.call(state) ?? false;

        /// Blocks page-provided ’builder’ when initial OR loading states,
        /// AND if the page does NOT specifically requested UI render on initial.
        final _safeGuardBuilder =
            (_initialStatus || _loadingStatus) && !showUIOnInitial;

        if (_safeGuardBuilder) {
          /// Provides a non-interactive loading overlay, or a safe placeholder
          /// if page wants to handle loading via ’isLoading’ parameter on ’builder’.
          return showLoadingOverlay
              ? AbsorbPointer(
                  child: Center(
                    child:
                        loadingOverlay ??
                        SpinKitRing(
                          color: context.colorPalette.error.withAlpha(150),
                          size: AppConstants.sizes.loadingWidget,
                          lineWidth: 5,
                        ),
                  ),
                )
              : const SizedBox.shrink();
        }

        /// Executes the page-provided builder, and renders the actual UI with current loading info.
        return builder(context, state, _bloc, _loadingStatus);
      },
    );

    /// Manages bloc lifetime and sharing strategy with provideMode parameter.
    final _blocProvider = switch (provideMode) {
      ProvideMode.factory => BlocProvider<B>(
        create: (_) => _bloc,
        child: _blocConsumer,
      ),
      ProvideMode.singleton => BlocProvider<B>.value(
        value: _bloc,
        child: _blocConsumer,
      ),
      ProvideMode.lazySingleton => BlocProvider<B>.value(
        value: _bloc,
        child: _blocConsumer,
      ),
      ProvideMode.subInstance => BlocProvider<B>.value(
        value: BlocProvider.of<B>(context),
        child: _blocConsumer,
      ),
    };

    return _blocProvider;
  }
}

/// 📌 Potential Improvements for future:
///    - ’onCreate’ and ’onDispose’ parameters to provide init (like bloc.add(InitialEvent)) and destroy scenarios. (requires StatefulWidget)
///    - ’NotificationMode’ parameter (notifyError and notifySuccess) can be a global user preference option on ProfilePage via SettingsBloc.
///    - ’existingBloc’ parameter to easily provide fake/mock Bloc's for Widget tests (removes GetIt dependency).
