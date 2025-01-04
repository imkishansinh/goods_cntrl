import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:goods_cntrl/core/dimens.dart';
import 'package:goods_cntrl/features/landing/cubit/cubit.dart';
import 'package:goods_cntrl/features/login/login.dart';

import '../../../router/routes.dart';

class LandingBody extends StatelessWidget {
  const LandingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LandingCubit, LandingState>(
      builder: (context, state) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: SizeDimens.medium,
            children: [
              Icon(
                Icons.shopping_cart_outlined,
                size: SizeDimens.xLarge,
              ),
              IconButton(
                onPressed: () {
                  context.pushReplacement(Routes.login);
                },
                icon: Icon(
                  Icons.forward_outlined,
                  size: SizeDimens.xxLarge,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
