import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inner_shadow_widget/inner_shadow_widget.dart';

import 'package:case_study_clean_architecture_project/core/shared/components/custom_text.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';
import 'package:case_study_clean_architecture_project/features/profile/domain/entities/token_pack/token_pack.dart';

class TokenPackChip extends StatelessWidget {
  const TokenPackChip({required this.pack, super.key});

  final TokenPack pack;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,

      child: InnerShadow(
        blur: AppConstants.blurs.innerShadowBlur,
        color: ColorPalette.permaWhite.withAlpha(200),
        offset: Offset.zero,

        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: AppConstants.paddings.tokenChipHorizontal.w,
            vertical: AppConstants.paddings.tokenChipVertical.h,
          ),

          decoration: BoxDecoration(
            color: pack.gradientColor,
            borderRadius: BorderRadius.circular(
              AppConstants.radius.tokenChip.r,
            ),
          ),

          child: CustomText(
            text: '+${pack.discountPercent}%',
            textStyle: context.textTheme.infoLight,
            color: ColorPalette.permaWhite,
          ),
        ),
      ),
    );
  }
}
