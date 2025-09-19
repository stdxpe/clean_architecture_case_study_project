import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:case_study_clean_architecture_project/core/entities/user/user.dart';
import 'package:case_study_clean_architecture_project/core/shared/components/custom_text.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';

class ProfileDetailsCard extends StatelessWidget {
  const ProfileDetailsCard({required this.profile, super.key});

  final User profile;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: AppConstants.paddings.profilePageW,
        right: AppConstants.paddings.profilePageW,
      ),

      child: InkWell(
        onTap: () => context.push(Routes.profileDetails),
        borderRadius: BorderRadius.circular(AppConstants.radius.profileCard),

        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: AppConstants.paddings.profileCardV,
            horizontal: AppConstants.paddings.profileCardH,
          ),

          decoration: BoxDecoration(
            color: context.colorPalette.text.withAlpha(10),
            borderRadius: BorderRadius.circular(
              AppConstants.radius.profileCard,
            ),
          ),

          child: Row(
            spacing: AppConstants.spacings.space9,
            children: [
              Container(
                width: AppConstants.sizes.profilePicMainH,
                height: AppConstants.sizes.profilePicMainH,
                decoration: const BoxDecoration(shape: BoxShape.circle),
                clipBehavior: Clip.antiAlias,
                child: (profile.photoUrl.isNotNullOrEmpty)
                    ? CachedNetworkImage(
                        imageUrl: profile.photoUrl!,
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
                      text: profile.name,
                      textStyle: context.textTheme.title,
                      fontSizeCustom: AppConstants.fontSizes.size17,
                      fontWeightCustom: FontWeight.w600,
                      color: context.colorPalette.text,
                    ),

                    CustomText(
                      text: profile.email,
                      textStyle: context.textTheme.infoLight,
                      fontSizeCustom: AppConstants.fontSizes.size12,
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsetsGeometry.only(right: 10.w),
                child: Icon(
                  CupertinoIcons.forward,
                  size: 20.sp,
                  color: context.colorPalette.text,
                ),
              ),
            ],
          ),
        ),
      ),
    ).animate().fadeIn(delay: 300.ms, duration: 400.ms);
  }
}
