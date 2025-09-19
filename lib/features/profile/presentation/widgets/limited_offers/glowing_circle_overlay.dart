import 'dart:ui';
import 'package:flutter/material.dart';

import 'package:case_study_clean_architecture_project/core/extensions/transform_extensions.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';

class GlowingCircleOverlay extends StatelessWidget {
  const GlowingCircleOverlay({
    required this.alignment,
    required this.blur,
    super.key,
  });

  final AlignmentGeometry alignment;
  final double blur;

  @override
  Widget build(BuildContext context) {
    return ImageFiltered(
      imageFilter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
      child: Align(
        alignment: alignment.location,
        child: Container(
          width: AppConstants.sizes.glowingCircleDiameter,
          height: AppConstants.sizes.glowingCircleDiameter,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: context.colorPalette.bottomSheetPrimary.withAlpha(50),
            boxShadow: [
              BoxShadow(
                spreadRadius: AppConstants.blurs.spreadRadius,
                blurRadius: AppConstants.blurs.blurRadius,
                color: context.colorPalette.bottomSheetPrimary.withAlpha(100),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
