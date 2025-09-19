import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:case_study_clean_architecture_project/core/shared/wrappers/bloc_wrapper.dart';
import 'package:case_study_clean_architecture_project/core/shared/components/custom_text.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';
import 'package:case_study_clean_architecture_project/core/shared/components/custom_elevated_button.dart';
import 'package:case_study_clean_architecture_project/features/profile/presentation/bloc/profile/profile_bloc.dart';
import 'package:case_study_clean_architecture_project/features/profile/presentation/bloc/profile/profile_state.dart';
import 'package:case_study_clean_architecture_project/features/profile/presentation/bloc/profile/profile_status.dart';

class ProfileInfoCard extends StatelessWidget {
  const ProfileInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocWrapper<ProfileBloc, ProfileState>(
      provideMode: ProvideMode.lazySingleton,
      showLoadingOverlay: false,
      isLoading: (s) => s.status.whenOrNull(loading: () => true),
      uiSideEffects: (state) => state.uiSideEffect,

      builder: (context, state, bloc, isLoading) {
        return Padding(
          padding: EdgeInsets.only(
            left: AppConstants.paddings.profileInfoCardLeft,
            right: AppConstants.paddings.profileInfoCardRight,
            bottom: AppConstants.spacings.favMoviesTitleTop,
            top: AppConstants.paddings.appBarBottom,
          ),

          child: Row(
            spacing: AppConstants.spacings.space9,
            children: [
              Container(
                width: AppConstants.sizes.profilePicH,
                height: AppConstants.sizes.profilePicH,
                decoration: const BoxDecoration(shape: BoxShape.circle),
                clipBehavior: Clip.antiAlias,
                child: (state.profile.photoUrl.isNotNullOrEmpty)
                    ? CachedNetworkImage(
                        imageUrl: state.profile.photoUrl!,
                        fit: BoxFit.cover,
                      )
                    : const SizedBox.shrink(),
              ),

              Expanded(
                child: Column(
                  spacing: AppConstants.spacings.space5,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: state.profile.name,
                      textStyle: context.textTheme.action,
                      color: context.colorPalette.text,
                    ),

                    CustomText(
                      text: 'ID: ${state.profile.id.shortenId}',
                      textStyle: context.textTheme.infoLight,
                      color: context.colorPalette.textFaded05,
                    ),
                  ],
                ),
              ),

              CustomElevatedButton(
                onPressed: () => context.push(Routes.uploadPhoto),
                text: AppStrings.addPhotoButton,
                textStyle: context.textTheme.infoBold,
                radius: AppConstants.radius.addPhotoButton,
                padding: EdgeInsets.symmetric(
                  vertical: AppConstants.paddings.addPhotoButtonV,
                  horizontal: AppConstants.paddings.addPhotoButtonH,
                ),
              ),
            ],
          ),
        ).animate().fadeIn(delay: 300.ms, duration: 400.ms);
      },
    );
  }
}
