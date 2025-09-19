import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:case_study_clean_architecture_project/core/dependency_injection/injector.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';
import 'package:case_study_clean_architecture_project/core/settings/settings_bloc/settings_bloc.dart';
import 'package:case_study_clean_architecture_project/core/settings/settings_bloc/settings_state.dart';
import 'package:case_study_clean_architecture_project/core/services/navigation/navigation_service.dart';
import 'package:case_study_clean_architecture_project/features/auth/presentation/bloc/auth/auth_bloc.dart';

class RootApp extends StatelessWidget {
  const RootApp({super.key});

  @override
  Widget build(BuildContext context) {
    /// Bloc Implemented as State Management Solution
    return MultiBlocProvider(
      providers: [
        /// App-wide Global-Scoped Bloc's provided
        BlocProvider.value(value: getIt<SettingsBloc>()),
        BlocProvider.value(value: getIt<AuthBloc>()),
      ],

      child: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) {
          return ScreenUtilInit(
            /// ScreenUtil Implemented for Responsive/Adaptive Design with Raw Figma Sizes
            enableScaleText: () => false,
            minTextAdapt: true,
            ensureScreenSize: true,
            designSize: const Size(
              AppConstants.rawDesignWidth,
              AppConstants.rawDesignHeight,
            ),

            builder: (_, _) => MaterialApp.router(
              title: AppConstants.appTitle,
              debugShowCheckedModeBanner: false,

              /// Custom Themes Implemented
              theme: AppThemes.light,
              darkTheme: AppThemes.dark,
              themeAnimationDuration: 10.ms,
              themeMode: state.preferences?.themeMode,

              /// EasyLocalization Implemented as Localization Solution
              locale: context.locale,
              supportedLocales: context.supportedLocales,
              localizationsDelegates: context.localizationDelegates,

              /// Go_Router Implemented as Navigation Solution
              routerConfig: AppRouter.router,
            ),
          );
        },
      ),
    );
  }
}
