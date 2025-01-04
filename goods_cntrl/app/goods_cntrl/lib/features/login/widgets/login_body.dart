import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:goods_cntrl/features/home/home.dart';
import 'package:goods_cntrl/features/login/cubit/cubit.dart';

import '../../../router/routes.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        return Center(
          child: GestureDetector(
            onTap: () {
              context.pushReplacementNamed(Routes.home.name.toString());
            },
            child: Text(state.customProperty),
          ),
        );
      },
    );
  }
}
