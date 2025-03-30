import 'package:flutter/material.dart';
import 'package:goods_cntrl/core/dimens.dart';

const IconData appIconData = Icons.store_mall_directory_rounded;

class AppIcon extends StatelessWidget {
  const AppIcon({
    super.key,
    this.iconSize = SizeDimens.large,
  });

  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Icon(
      appIconData,
      size: iconSize,
      color: Theme.of(context).colorScheme.primary,
    );
  }
}
