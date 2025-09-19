import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';

class LoadingMoreIndicator extends StatelessWidget {
  const LoadingMoreIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
          bottom: AppConstants.paddings.loadingMoreIndicator,
          width: context.mediaQuery.size.width,
          child: SpinKitRing(
            size: AppConstants.sizes.loadingMoreIndicator,
            color: ColorPalette.permaWhite,
            duration: 900.ms,
          ),
        )
        .animate()
        .fadeIn(duration: 100.ms, curve: Curves.easeOut)
        .moveY(begin: 50, end: 0, duration: 200.ms);
  }
}
