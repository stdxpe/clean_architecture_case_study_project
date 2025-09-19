import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'package:case_study_clean_architecture_project/core/utilities/assets.gen.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';

class FavoriteButton extends StatelessWidget {
  const FavoriteButton({
    required this.onTap,
    required this.isFavorite,
    super.key,
  });

  final void Function() onTap;
  final bool isFavorite;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: AppConstants.paddings.favoriteButtonRight,
      bottom: AppConstants.paddings.favoriteButtonBottom,

      child: ClipRRect(
        borderRadius: BorderRadius.circular(AppConstants.radius.favoriteButton),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: AppConstants.blurs.sigmaX,
            sigmaY: AppConstants.blurs.sigmaY,
          ),

          child: IconButton(
            onPressed: onTap,

            icon: AnimatedSwitcher(
              duration: 300.ms,
              transitionBuilder: (child, animation) => FadeTransition(
                opacity: animation,
                child: child,
              ),

              child: SvgPicture.asset(
                Assets.icons.like,
                width: AppConstants.sizes.iconFavorite,
                height: AppConstants.sizes.iconFavorite,
                key: ValueKey(isFavorite),
                colorFilter: ColorFilter.mode(
                  isFavorite ? ColorPalette.permaRed : ColorPalette.permaWhite,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
