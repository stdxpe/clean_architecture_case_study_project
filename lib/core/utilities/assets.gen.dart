// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/apple.svg
  String get apple => 'assets/icons/apple.svg';

  /// File path: assets/icons/facebook.svg
  String get facebook => 'assets/icons/facebook.svg';

  /// File path: assets/icons/gem.svg
  String get gem => 'assets/icons/gem.svg';

  /// File path: assets/icons/google.svg
  String get google => 'assets/icons/google.svg';

  /// File path: assets/icons/home.svg
  String get home => 'assets/icons/home.svg';

  /// File path: assets/icons/leftArrow.svg
  String get leftArrow => 'assets/icons/leftArrow.svg';

  /// File path: assets/icons/like.svg
  String get like => 'assets/icons/like.svg';

  /// File path: assets/icons/logo.svg
  String get logo => 'assets/icons/logo.svg';

  /// File path: assets/icons/mail.svg
  String get mail => 'assets/icons/mail.svg';

  /// File path: assets/icons/plus.svg
  String get plus => 'assets/icons/plus.svg';

  /// File path: assets/icons/profile.svg
  String get profile => 'assets/icons/profile.svg';

  /// File path: assets/icons/unlock.svg
  String get unlock => 'assets/icons/unlock.svg';

  /// File path: assets/icons/user.svg
  String get user => 'assets/icons/user.svg';

  /// File path: assets/icons/visibility_off.svg
  String get visibilityOff => 'assets/icons/visibility_off.svg';

  /// File path: assets/icons/visibility_on.svg
  String get visibilityOn => 'assets/icons/visibility_on.svg';

  /// List of all assets
  List<String> get values => [
    apple,
    facebook,
    gem,
    google,
    home,
    leftArrow,
    like,
    logo,
    mail,
    plus,
    profile,
    unlock,
    user,
    visibilityOff,
    visibilityOn,
  ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/app_icon.png
  AssetGenImage get appIcon =>
      const AssetGenImage('assets/images/app_icon.png');

  /// File path: assets/images/diamond.png
  AssetGenImage get diamond => const AssetGenImage('assets/images/diamond.png');

  /// File path: assets/images/dummy_movie_pic.png
  AssetGenImage get dummyMoviePic =>
      const AssetGenImage('assets/images/dummy_movie_pic.png');

  /// File path: assets/images/dummy_profile_pic.png
  AssetGenImage get dummyProfilePic =>
      const AssetGenImage('assets/images/dummy_profile_pic.png');

  /// File path: assets/images/heart.png
  AssetGenImage get heart => const AssetGenImage('assets/images/heart.png');

  /// File path: assets/images/splash_screen.png
  AssetGenImage get splashScreen =>
      const AssetGenImage('assets/images/splash_screen.png');

  /// File path: assets/images/twoHearts.png
  AssetGenImage get twoHearts =>
      const AssetGenImage('assets/images/twoHearts.png');

  /// File path: assets/images/upArrow.png
  AssetGenImage get upArrow => const AssetGenImage('assets/images/upArrow.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    appIcon,
    diamond,
    dummyMoviePic,
    dummyProfilePic,
    heart,
    splashScreen,
    twoHearts,
    upArrow,
  ];
}

class $AssetsLottieGen {
  const $AssetsLottieGen();

  /// File path: assets/lottie/camera.json
  String get camera => 'assets/lottie/camera.json';

  /// File path: assets/lottie/camera_dark.json
  String get cameraDark => 'assets/lottie/camera_dark.json';

  /// File path: assets/lottie/error.json
  String get error => 'assets/lottie/error.json';

  /// File path: assets/lottie/like.json
  String get like => 'assets/lottie/like.json';

  /// File path: assets/lottie/loading.json
  String get loading => 'assets/lottie/loading.json';

  /// File path: assets/lottie/no_connection.json
  String get noConnection => 'assets/lottie/no_connection.json';

  /// List of all assets
  List<String> get values => [
    camera,
    cameraDark,
    error,
    like,
    loading,
    noConnection,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsLottieGen lottie = $AssetsLottieGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}
