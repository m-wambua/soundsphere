import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScaledAssetImage extends StatelessWidget {
  final String assetPath;
  final double? width;
  final double? height;

  const ScaledAssetImage({
    Key? key,
    required this.assetPath,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      assetPath,
      width: width ?? 70.0,
      height: height ?? 70.0,
      fit: BoxFit.contain,
      errorBuilder: (context, error, StackTrace) {
        return Icon(
          Icons.image_not_supported,
          size: width ?? 70.0,
        );
      },
    );
  }
}
