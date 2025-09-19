import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:case_study_clean_architecture_project/core/shared/components/custom_text.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';
import 'package:case_study_clean_architecture_project/features/profile/presentation/widgets/profile_app_bar.dart';
import 'package:case_study_clean_architecture_project/features/profile/presentation/widgets/profile_info_card.dart';
import 'package:case_study_clean_architecture_project/features/profile/presentation/widgets/favorite_movies_gridview.dart';
import 'package:case_study_clean_architecture_project/features/profile/presentation/widgets/profile_info_card_sliver.dart';
import 'package:case_study_clean_architecture_project/features/profile/presentation/widgets/limited_offers/limited_offers_button.dart';

/// Preferred a sliver-based [ProfileInfoCard] for interactive scroll behavior on header.
/// 📌 NOTE: [NestedScrollView] supports combining sliver headers and scrollable non-sliver body without conflicts.

class ProfileDetailsPage extends StatelessWidget {
  const ProfileDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProfileAppBar(
        onTap: () => context.pop(),
        action: const LimitedOffersButton(),
      ),

      body: NestedScrollView(
        headerSliverBuilder: (context, isScrolled) => [
          ProfileInfoCardSliver(isScrolled: isScrolled),
        ],

        body: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Column(
            children: [
              CustomText(
                text: AppStrings.favoriteMovies,
                textStyle: context.textTheme.infoBold,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(
                  left: AppConstants.paddings.profilePageH,
                  top: AppConstants.spacings.favMoviesTitleTop,
                  bottom: AppConstants.spacings.favMoviesTitleBottom,
                ),
              ),

              const FavoriteMoviesGridview(),
            ],
          ),
        ),
      ),
    );
  }
}
