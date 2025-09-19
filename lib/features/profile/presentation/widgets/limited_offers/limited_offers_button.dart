import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:case_study_clean_architecture_project/core/utilities/assets.gen.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';
import 'package:case_study_clean_architecture_project/core/shared/components/custom_elevated_button.dart';

/// Style attributes come directly from [ElevatedButtonThemeData] of [Theme].

class LimitedOffersButton extends StatelessWidget {
  const LimitedOffersButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      onPressed: () => context.push(Routes.limitedOffers),
      text: AppStrings.limitedOffer,
      icon: Assets.icons.gem,
      radius: AppConstants.radius.limitedOfferButton,
      padding: EdgeInsets.symmetric(
        vertical: AppConstants.paddings.limitedOfferButtonV,
        horizontal: AppConstants.paddings.limitedOfferButtonH,
      ),

      textStyle: context.textTheme.montserrat(
        fontSize: AppConstants.fontSizes.size12,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
