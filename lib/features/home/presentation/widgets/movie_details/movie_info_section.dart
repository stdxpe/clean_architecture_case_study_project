import 'package:flutter/material.dart';

import 'package:case_study_clean_architecture_project/core/shared/components/custom_text.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';
import 'package:case_study_clean_architecture_project/features/home/presentation/widgets/movie_details/chip_listview.dart';

class MovieInfoSection extends StatelessWidget {
  const MovieInfoSection({required this.title, required this.list, super.key});

  final String title;
  final List<String> list;

  @override
  Widget build(BuildContext context) {
    if (list.isEmpty) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: title,
          textStyle: context.textTheme.title,
          padding: EdgeInsets.only(
            top: AppConstants.spacings.space25,
            bottom: AppConstants.spacings.space10,
            left: AppConstants.paddings.detailsWideW,
          ),
        ),

        ChipListView(list: list),
      ],
    );
  }
}
