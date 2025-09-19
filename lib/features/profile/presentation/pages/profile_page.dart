import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tabler_icons/tabler_icons.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:case_study_clean_architecture_project/core/utilities/url_helper.dart';
import 'package:case_study_clean_architecture_project/core/shared/wrappers/bloc_wrapper.dart';
import 'package:case_study_clean_architecture_project/core/shared/components/custom_text.dart';
import 'package:case_study_clean_architecture_project/core/extensions/transform_extensions.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';
import 'package:case_study_clean_architecture_project/features/profile/presentation/widgets/profile_listile.dart';
import 'package:case_study_clean_architecture_project/features/profile/presentation/widgets/profile_app_bar.dart';
import 'package:case_study_clean_architecture_project/features/profile/presentation/bloc/profile/profile_bloc.dart';
import 'package:case_study_clean_architecture_project/features/profile/presentation/bloc/profile/profile_event.dart';
import 'package:case_study_clean_architecture_project/features/profile/presentation/bloc/profile/profile_state.dart';
import 'package:case_study_clean_architecture_project/features/profile/presentation/bloc/profile/profile_status.dart';
import 'package:case_study_clean_architecture_project/features/profile/presentation/widgets/profile_details_card.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocWrapper<ProfileBloc, ProfileState>(
      provideMode: ProvideMode.lazySingleton,
      notificationMode: NotificationMode.toast,
      isLoading: (state) => state.status.whenOrNull(loading: () => true),
      uiSideEffects: (state) => state.uiSideEffect,
      builder: (context, state, bloc, isLoading) {
        final prefs = state.preferences;

        return Scaffold(
          backgroundColor: context.colorPalette.scaffoldBackground,
          appBar: ProfileAppBar(
            title: AppStrings.profile,
            onTap: () => context.go(Routes.home),
          ),

          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ProfileDetailsCard(profile: state.profile),

              SizedBox(height: AppConstants.spacings.space25.h),

              ProfileListile(
                text: AppStrings.preferencesFavoriteMovies,
                icon: TablerIcons.category,
                onTap: () => context.push(Routes.profileDetails),
              ),

              ProfileListile(
                text: AppStrings.preferencesChangePassword,
                icon: TablerIcons.lock,
              ),

              ProfileListile(
                text: AppStrings.preferencesLanguage,
                icon: TablerIcons.world,
                trailingText: prefs.locale.displayName,
                onTap: () => bloc.add(
                  ProfileEvent.preferencesChanged(locale: prefs.locale.toggled),
                ),
              ),

              ProfileListile(
                text: AppStrings.preferencesDarkMode,
                icon: TablerIcons.moon,
                defaultValue: prefs.themeMode == ThemeMode.dark,
                onSwitched: (isDark) => bloc.add(
                  ProfileEvent.preferencesChanged(
                    themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
                  ),
                ),
              ),

              ProfileListile(
                text: AppStrings.preferencesNotifications,
                icon: TablerIcons.bell,
                defaultValue: prefs.notificationsEnabled,
                onSwitched: (value) {
                  bloc.add(ProfileEvent.notificationRequested(value));
                  bloc.add(
                    ProfileEvent.preferencesChanged(notifications: value),
                  );
                },
              ),

              ProfileListile(
                text: AppStrings.preferencesRememberMe,
                icon: TablerIcons.fingerprint,
                defaultValue: prefs.rememberMe,
                onSwitched: (value) => bloc.add(
                  ProfileEvent.preferencesChanged(rememberMe: value),
                ),
              ),

              const Spacer(),

              ProfileListile(
                onTap: () => context.push(Routes.termsAndConditions),
                text: AppStrings.preferencesTermsAndConditions,
                icon: TablerIcons.file_check,
                isTransparent: true,
                paddingV: 5.h,
              ),

              ProfileListile(
                onTap: () => bloc.add(const CrashlyticsRequested()),
                text: AppStrings.preferencesCrashlyticsTest,
                icon: TablerIcons.bug,
                isTransparent: true,
                paddingV: 5.h,
              ),

              ProfileListile(
                text: AppStrings.preferencesDeveloper,
                icon: TablerIcons.code,
                isTransparent: true,
                paddingV: 5.h,
                onTap: () => UrlHelper.launch(
                  AppConstants.links.github,
                  AppConstants.links.projectPath,
                ),
              ),

              CustomText(
                text: '${AppStrings.lastSignedIn}${FormatTime.toAmPm()}',
                textStyle: context.textTheme.infoLight,
                fontSizeCustom: AppConstants.fontSizes.size10,
                color: context.colorPalette.textFaded075,
                padding: EdgeInsetsGeometry.only(
                  top: AppConstants.spacings.space10,
                  bottom: AppConstants.spacings.space2,
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppConstants.paddings.profilePageW,
                ),
                child: OutlinedButton(
                  onPressed: () => bloc.add(const ProfileSignOutRequested()),
                  child: CustomText(
                    text: AppStrings.signOutButton,
                    textStyle: context.textTheme.action,
                  ),
                ),
              ),
            ].animate(interval: 100.ms).fadeIn(duration: 500.ms),
          ),
        );
      },
    );
  }
}
