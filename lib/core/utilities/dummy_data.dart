import 'package:case_study_clean_architecture_project/core/entities/user/user.dart';
import 'package:case_study_clean_architecture_project/core/entities/movie/movie.dart';
import 'package:case_study_clean_architecture_project/core/utilities/assets.gen.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';
import 'package:case_study_clean_architecture_project/features/profile/domain/entities/token_pack/token_pack.dart';
import 'package:case_study_clean_architecture_project/features/profile/domain/entities/bonus_reward/bonus_reward.dart';

final List<TokenPack> tokenPacks = [
  const TokenPack(
    id: 1,
    currentTokenCount: '330',
    formerTokenCount: '200',
    currentPrice: 99.99,
    discountPercent: 10,
    gradientColor: ColorPalette.bottomSheetGradientSecondary,
  ),
  const TokenPack(
    id: 2,
    currentTokenCount: '3.375',
    formerTokenCount: '2.000',
    currentPrice: 799.99,
    discountPercent: 70,
    gradientColor: ColorPalette.bottomSheetGradientTertiary,
  ),
  const TokenPack(
    id: 3,
    currentTokenCount: '1.350',
    formerTokenCount: '1.000',
    currentPrice: 399.99,
    discountPercent: 35,
    gradientColor: ColorPalette.bottomSheetGradientSecondary,
  ),
];

final List<BonusReward> bonusRewards = [
  BonusReward(
    id: 1,
    title: AppStrings.premium,
    iconPath: Assets.images.diamond.path,
  ),
  BonusReward(
    id: 2,
    title: AppStrings.moreMatches,
    iconPath: Assets.images.twoHearts.path,
  ),
  BonusReward(
    id: 3,
    title: AppStrings.boostProfile,
    iconPath: Assets.images.upArrow.path,
  ),
  BonusReward(
    id: 4,
    title: AppStrings.moreLikes,
    iconPath: Assets.images.heart.path,
  ),
];

const dummyUser = User(
  id: '2456773433343534',
  name: 'Ayça Aydoğan',
  email: 'aycaaydogan@gmail.com',
  photoUrl:
      'https://cdn.cgdream.ai/_next/image?url=https%3A%2F%2Fapi.cgdream.ai%2Frails%2Factive_storage%2Fblobs%2Fredirect%2FeyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBMUxSZWc9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ%3D%3D--f89b5d55d077057b81849b887ab7a274da76721d%2F482a721f-4c14-4211-8c33-fb9f48a322b0_0.png&w=1080&q=95',
);

const placeholderMovie = Movie(
  id: '',
  title: '',
  description: '',
  posterUrl: '',
  director: '',
  isFavorite: false,
  images: [],
);

const userInitial = User(id: '', name: '', email: '');

const profileInitial = User(id: '', name: '', email: '');
