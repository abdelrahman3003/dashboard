/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/Mask group.png
  AssetGenImage get maskGroup =>
      const AssetGenImage('assets/icons/Mask group.png');

  /// File path: assets/icons/arrow-right.svg
  String get arrowRight => 'assets/icons/arrow-right.svg';

  /// File path: assets/icons/avatar1.svg
  String get avatar1 => 'assets/icons/avatar1.svg';

  /// File path: assets/icons/avatar2.svg
  String get avatar2 => 'assets/icons/avatar2.svg';

  /// File path: assets/icons/card-receive.svg
  String get cardReceive => 'assets/icons/card-receive.svg';

  /// File path: assets/icons/card-send.svg
  String get cardSend => 'assets/icons/card-send.svg';

  /// File path: assets/icons/category-2.svg
  String get category2 => 'assets/icons/category-2.svg';

  /// File path: assets/icons/chart-2.svg
  String get chart2 => 'assets/icons/chart-2.svg';

  /// File path: assets/icons/convert-card.svg
  String get convertCard => 'assets/icons/convert-card.svg';

  /// File path: assets/icons/gallery.svg
  String get gallery => 'assets/icons/gallery.svg';

  /// File path: assets/icons/graph.svg
  String get graph => 'assets/icons/graph.svg';

  /// File path: assets/icons/logout.svg
  String get logout => 'assets/icons/logout.svg';

  /// File path: assets/icons/moneys.svg
  String get moneys => 'assets/icons/moneys.svg';

  /// File path: assets/icons/setting-2.svg
  String get setting2 => 'assets/icons/setting-2.svg';

  /// File path: assets/icons/wallet-2.svg
  String get wallet2 => 'assets/icons/wallet-2.svg';

  /// List of all assets
  List<dynamic> get values => [
        maskGroup,
        arrowRight,
        avatar1,
        avatar2,
        cardReceive,
        cardSend,
        category2,
        chart2,
        convertCard,
        gallery,
        graph,
        logout,
        moneys,
        setting2,
        wallet2
      ];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

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
    FilterQuality filterQuality = FilterQuality.low,
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

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
