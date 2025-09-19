import 'package:freezed_annotation/freezed_annotation.dart';

part 'bonus_reward.freezed.dart';

/// 📌 Created with [Freezed] for future backend or API integration,
/// while currently serving as a simple OOP representation for UI display.

@freezed
sealed class BonusReward with _$BonusReward {
  const factory BonusReward({
    required int id,
    required String title,
    required String iconPath,
  }) = _BonusReward;
}
