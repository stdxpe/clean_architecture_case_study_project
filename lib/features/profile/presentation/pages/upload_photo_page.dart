import 'dart:io';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:case_study_clean_architecture_project/core/utilities/assets.gen.dart';
import 'package:case_study_clean_architecture_project/core/shared/wrappers/bloc_wrapper.dart';
import 'package:case_study_clean_architecture_project/core/shared/components/custom_text.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';
import 'package:case_study_clean_architecture_project/core/shared/components/custom_filled_button.dart';
import 'package:case_study_clean_architecture_project/core/shared/components/custom_elevated_button.dart';
import 'package:case_study_clean_architecture_project/features/profile/presentation/widgets/profile_app_bar.dart';
import 'package:case_study_clean_architecture_project/features/auth/presentation/widgets/animated_status_message.dart';
import 'package:case_study_clean_architecture_project/features/profile/presentation/bloc/profile_photo_update/profile_photo_update_bloc.dart';
import 'package:case_study_clean_architecture_project/features/profile/presentation/bloc/profile_photo_update/profile_photo_update_event.dart';
import 'package:case_study_clean_architecture_project/features/profile/presentation/bloc/profile_photo_update/profile_photo_update_state.dart';
import 'package:case_study_clean_architecture_project/features/profile/presentation/bloc/profile_photo_update/profile_photo_update_status.dart';

class UploadPhotoPage extends StatelessWidget {
  const UploadPhotoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocWrapper<ProfilePhotoUpdateBloc, ProfilePhotoUpdateState>(
      provideMode: ProvideMode.factory,
      notificationMode: NotificationMode.toast,
      showLoadingOverlay: false,
      showUIOnInitial: true,
      isLoading: (state) => state.status.whenOrNull(uploadingPhoto: () => true),
      uiSideEffects: (state) => state.uiSideEffect,

      builder: (context, state, bloc, isLoading) {
        return Scaffold(
          appBar: ProfileAppBar(onTap: () => context.pop()),
          body: Padding(
            padding: EdgeInsets.only(
              left: AppConstants.paddings.uploadPhotoPage,
              right: AppConstants.paddings.uploadPhotoPage,
              bottom: AppConstants.paddings.uploadPhotoPage,
              top: AppConstants.paddings.uploadPhotoPageTop,
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CustomText(
                  text: AppStrings.uploadPhotosTitle,
                  textStyle: context.textTheme.title,
                ),

                CustomText(
                  text: AppStrings.uploadPhotosSubtitle,
                  textStyle: context.textTheme.subtitle,
                  maxLines: 2,
                  padding: EdgeInsets.only(
                    top: AppConstants.spacings.space12.h,
                    bottom: AppConstants.spacings.space47.h,
                  ),
                ),

                CustomFilledButton(
                  onPressed: () => bloc.add(const ProfilePhotoSelectEvent()),
                  isLoading: state.status is SelectingPhoto,
                  icon: Assets.icons.plus,
                  iconSize: AppConstants.sizes.iconPlusH.h,
                  height: AppConstants.sizes.plusButtonHeight.h,
                ),

                AnimatedStatusMessage(
                  message: state.status.whenOrNull(failure: (error) => error),
                  alignment: Alignment.center,
                ),

                if (state.selectedPhoto != null)
                  Container(
                    width: AppConstants.sizes.selectedProfilePicHeight,
                    height: AppConstants.sizes.selectedProfilePicHeight,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: FileImage(File(state.selectedPhoto!.path)),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ).animate().fadeIn(duration: 500.ms),

                const Spacer(),

                CustomElevatedButton(
                  onPressed: () => bloc.add(const ProfilePhotoUploadEvent()),
                  text: AppStrings.continueButton,
                  height: AppConstants.sizes.buttonH,
                  // Optional: state.status is UploadingPhoto
                  // Mind that Bloc currently have 2 separate loading status: SelectingPhoto and UploadingPhoto.
                  // 📌 Specific loading status is defined on BlocWrapper’s ’isLoading’ callback mapper above.
                  isLoading: isLoading,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
