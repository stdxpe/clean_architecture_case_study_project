import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_pack.freezed.dart';

/// 📌 Created with [Freezed] for future backend or API integration,
/// while currently serving as a simple OOP representation for UI display.

@freezed
sealed class TokenPack with _$TokenPack {
  const factory TokenPack({
    required int id,
    required int discountPercent,
    required double currentPrice,
    required String formerTokenCount,
    required String currentTokenCount,
    required Color gradientColor,
  }) = _TokenPack;
}
