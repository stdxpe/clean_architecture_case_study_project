import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:case_study_clean_architecture_project/core/utilities/dummy_data.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';
import 'package:case_study_clean_architecture_project/features/profile/presentation/widgets/limited_offers/token_pack_item.dart';

class TokenPacksSection extends StatelessWidget {
  const TokenPacksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(
          top: AppConstants.spacings.space22.h,
          bottom: AppConstants.spacings.space18.h,
        ),

        child: Row(
          spacing: AppConstants.spacings.space16.w,
          children: tokenPacks
              .map((pack) => TokenPackItem(pack: pack))
              .toList(),
        ),
      ),
    );
  }
}
