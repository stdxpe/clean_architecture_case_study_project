import 'package:flutter/material.dart';

import 'package:case_study_clean_architecture_project/features/profile/domain/entities/token_pack/token_pack.dart';
import 'package:case_study_clean_architecture_project/features/profile/presentation/widgets/limited_offers/token_pack_chip.dart';
import 'package:case_study_clean_architecture_project/features/profile/presentation/widgets/limited_offers/token_pack_container.dart';

class TokenPackItem extends StatelessWidget {
  const TokenPackItem({required this.pack, super.key});

  final TokenPack pack;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          TokenPackContainer(pack: pack),
          TokenPackChip(pack: pack),
        ],
      ),
    );
  }
}
