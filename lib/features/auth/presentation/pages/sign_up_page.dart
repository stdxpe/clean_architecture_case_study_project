import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:case_study_clean_architecture_project/core/utilities/assets.gen.dart';
import 'package:case_study_clean_architecture_project/core/shared/wrappers/bloc_wrapper.dart';
import 'package:case_study_clean_architecture_project/core/shared/components/custom_text.dart';
import 'package:case_study_clean_architecture_project/core/shared/components/custom_text_field.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';
import 'package:case_study_clean_architecture_project/core/shared/components/custom_text_button.dart';
import 'package:case_study_clean_architecture_project/core/shared/components/custom_elevated_button.dart';
import 'package:case_study_clean_architecture_project/features/auth/presentation/bloc/sign_up/sign_up_bloc.dart';
import 'package:case_study_clean_architecture_project/features/auth/presentation/bloc/sign_up/sign_up_event.dart';
import 'package:case_study_clean_architecture_project/features/auth/presentation/bloc/sign_up/sign_up_state.dart';
import 'package:case_study_clean_architecture_project/features/auth/presentation/bloc/sign_up/sign_up_status.dart';
import 'package:case_study_clean_architecture_project/features/auth/presentation/widgets/social_login_section.dart';
import 'package:case_study_clean_architecture_project/features/auth/presentation/widgets/animated_status_message.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocWrapper<SignUpBloc, SignUpState>(
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
                    text: AppStrings.signUpTitle,
                    textStyle: context.textTheme.title,
                  ),

                  CustomText(
                    text: AppStrings.signUpSubtitle,
                    textStyle: context.textTheme.subtitle,
                    maxLines: 2,
                    padding: EdgeInsets.only(
                      top: AppConstants.spacings.space12.h,
                      bottom: AppConstants.spacings.space45.h,
                    ),
                  ),

                  CustomTextField(
                    onChanged: (input) =>
                        bloc.add(SignUpEvent.nameChanged(input)),
                    hintText: AppStrings.hintFullName,
                    prefixIcon: Assets.icons.user,
                    padding: EdgeInsetsGeometry.only(
                      bottom: AppConstants.spacings.textFieldsBtwn,
                    ),
                  ),

                  CustomTextField(
                    onChanged: (input) =>
                        bloc.add(SignUpEvent.emailChanged(input)),
                    hintText: AppStrings.hintEmail,
                    prefixIcon: Assets.icons.mail,
                    padding: EdgeInsetsGeometry.only(
                      bottom: AppConstants.spacings.textFieldsBtwn,
                    ),
                  ),

                  CustomTextField(
                    onChanged: (input) =>
                        bloc.add(SignUpEvent.passwordChanged(input)),
                    onToggled: () =>
                        bloc.add(const SignUpEvent.passwordVisibilityToggled()),
                    hintText: AppStrings.hintPassword,
                    prefixIcon: Assets.icons.unlock,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: !state.isPasswordVisible,
                    padding: EdgeInsetsGeometry.only(
                      bottom: AppConstants.spacings.textFieldsBtwn,
                    ),
                  ),

                  CustomTextField(
                    onChanged: (input) =>
                        bloc.add(SignUpEvent.confirmPasswordChanged(input)),
                    onToggled: () =>
                        bloc.add(const SignUpEvent.passwordVisibilityToggled()),
                    hintText: AppStrings.hintConfirmPassword,
                    prefixIcon: Assets.icons.unlock,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: !state.isPasswordVisible,
                    padding: EdgeInsetsGeometry.only(
                      bottom: AppConstants.spacings.space16.h,
                    ),
                  ),

                  CustomTextButton(
                    onPressed: () => context.push(Routes.termsAndConditions),
                    leadingText: AppStrings.termsAndConditionsFirst,
                    buttonText: AppStrings.termsAndConditionsSecond,
                    isUnderlinedButton: true,
                    spacing: AppConstants.spacings.space6.w,
                    padding: EdgeInsetsGeometry.only(
                      left: AppConstants.paddings.inlineIndent,
                      bottom: AppConstants.spacings.space2.h,
                    ),
                  ),

                  CustomText(
                    text: AppStrings.termsAndConditionsThird,
                    textStyle: context.textTheme.subtitle,
                    color: context.colorPalette.textFaded05,
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsetsGeometry.only(
                      left: AppConstants.paddings.inlineIndent,
                    ),
                  ),

                  AnimatedStatusMessage(
                    message: state.status.whenOrNull(failure: (error) => error),
                  ),

                  CustomElevatedButton(
                    onPressed: () => bloc.add(const SignUpEvent.submitted()),
                    text: AppStrings.signUpButton,
                    height: AppConstants.sizes.buttonH,
                    isLoading: isLoading,
                  ),

                  const SocialLoginSection(),

                  CustomTextButton(
                    onPressed: () => context.push(Routes.signIn),
                    leadingText: AppStrings.alreadyHaveAnAccount,
                    buttonText: AppStrings.alreadyHaveAnAccountButton,
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
