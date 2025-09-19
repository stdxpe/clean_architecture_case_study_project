import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:case_study_clean_architecture_project/core/utilities/assets.gen.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';
import 'package:case_study_clean_architecture_project/core/shared/components/custom_filled_button.dart';

class SocialLoginSection extends StatelessWidget {
  const SocialLoginSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: AppConstants.spacings.space37.h,
        bottom: AppConstants.spacings.space32.h,
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: AppConstants.spacings.space10.w,
        children: [
          CustomFilledButton(
            onPressed: () {}, // Implement Google Sign-in
            icon: Assets.icons.google,
          ),

          CustomFilledButton(
            onPressed: () {}, // Implement Apple Sign-in
            icon: Assets.icons.apple,
          ),

          CustomFilledButton(
            onPressed: () {}, // Implement Facebook Sign-in
            icon: Assets.icons.facebook,
          ),
        ],
      ),
    );
  }
}
