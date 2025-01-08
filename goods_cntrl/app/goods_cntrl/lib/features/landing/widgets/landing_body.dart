import 'package:flutter/material.dart';
import 'package:goods_cntrl/core/dimens.dart';

class LandingBody extends StatelessWidget {
  const LandingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: SizeDimens.medium,
        children: [
          Icon(
            Icons.shopping_cart_outlined,
            size: SizeDimens.xxLarge,
          ),
        ],
      ),
    );
  }
}
