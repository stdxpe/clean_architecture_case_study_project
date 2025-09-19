import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:case_study_clean_architecture_project/core/utilities/assets.gen.dart';
import 'package:case_study_clean_architecture_project/core/shared/wrappers/bloc_wrapper.dart';
import 'package:case_study_clean_architecture_project/core/shared/components/custom_text.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';
import 'package:case_study_clean_architecture_project/core/shared/components/custom_text_field.dart';
import 'package:case_study_clean_architecture_project/core/shared/components/custom_text_button.dart';
import 'package:case_study_clean_architecture_project/core/shared/components/custom_elevated_button.dart';
import 'package:case_study_clean_architecture_project/features/auth/presentation/bloc/sign_in/sign_in_bloc.dart';
import 'package:case_study_clean_architecture_project/features/auth/presentation/bloc/sign_in/sign_in_event.dart';
import 'package:case_study_clean_architecture_project/features/auth/presentation/bloc/sign_in/sign_in_state.dart';
import 'package:case_study_clean_architecture_project/features/auth/presentation/bloc/sign_in/sign_in_status.dart';
import 'package:case_study_clean_architecture_project/features/auth/presentation/widgets/social_login_section.dart';
import 'package:case_study_clean_architecture_project/features/auth/presentation/widgets/animated_status_message.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocWrapper<SignInBloc, SignInState>(
      provideMode: ProvideMode.factory,
      notificationMode: NotificationMode.none,
      showLoadingOverlay: false,
      showUIOnInitial: true,
      isLoading: (state) => state.status.whenOrNull(loading: () => true),
      uiSideEffects: (state) => state.uiSideEffect,

      builder: (context, state, bloc, isLoading) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),

            child: Container(
              width: context.mediaQuery.size.width,
              height: context.mediaQuery.size.height,
              padding: EdgeInsets.all(AppConstants.paddings.main.w),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CustomText(
                    text: AppStrings.signInTitle,
                    textStyle: context.textTheme.title,
                  ),

                  CustomText(
                    text: AppStrings.signInSubtitle,
                    textStyle: context.textTheme.subtitle,
                    maxLines: 2,
                    padding: EdgeInsets.only(
                      top: AppConstants.spacings.space12.h,
                      bottom: AppConstants.spacings.space45.h,
                    ),
                  ),

                  CustomTextField(
                    onChanged: (input) =>
                        bloc.add(SignInEvent.emailChanged(input)),
                    hintText: AppStrings.hintEmail,
                    prefixIcon: Assets.icons.mail,
                    padding: EdgeInsetsGeometry.only(
                      bottom: AppConstants.spacings.space13.h,
                    ),
                  ),

                  CustomTextField(
                    onChanged: (input) =>
                        bloc.add(SignInEvent.passwordChanged(input)),
                    onToggled: () =>
                        bloc.add(const SignInEvent.passwordVisibilityToggled()),
                    hintText: AppStrings.hintPassword,
                    prefixIcon: Assets.icons.unlock,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: !state.isPasswordVisible,
                  ),

                  AnimatedStatusMessage(
                    message: state.status.whenOrNull(failure: (error) => error),
                  ),

                  CustomTextButton(
                    onPressed: () {}, // Routes.forgotPassword
                    buttonText: AppStrings.forgotPassword,
                    isUnderlinedButton: true,
                    padding: EdgeInsetsGeometry.only(
                      left: AppConstants.paddings.inlineIndent,
                      bottom: AppConstants.spacings.space24.h,
                    ),
                  ),

                  CustomElevatedButton(
                    onPressed: () => bloc.add(const SignInEvent.submitted()),
                    text: AppStrings.signInButton,
                    height: AppConstants.sizes.buttonH,
                    isLoading: isLoading,
                  ),

                  const SocialLoginSection(),

                  CustomTextButton(
                    onPressed: () => context.push(Routes.signUp),
                    leadingText: AppStrings.dontHaveAnAccount,
                    buttonText: AppStrings.dontHaveAnAccountButton,
                    isCentered: true,
                  ),
                ].animate(interval: 100.ms).fadeIn(duration: 1000.ms),
              ),
            ),
          ),
        );
      },
    );
  }
}
