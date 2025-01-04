import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:goods_cntrl/features/home/cubit/cubit.dart';

import '../../../router/routes.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Center(
          child: GestureDetector(
            onTap: () {
              context.push(Routes.home + Routes.setting);
            },
            child: Text(state.customProperty),
          ),
        );
      },
    );
  }
}
