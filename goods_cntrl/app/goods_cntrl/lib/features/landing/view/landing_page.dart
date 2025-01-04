import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:goods_cntrl/features/landing/cubit/cubit.dart';
import 'package:goods_cntrl/features/landing/widgets/landing_body.dart';

import '../../../router/routes.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LandingCubit(),
      child: Scaffold(
        body: LandingView(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.pushReplacementNamed(
              Routes.login.name.toString(),
            );
          },
          child: Icon(
            Icons.navigate_next_rounded,
          ),
        ),
      ),
    );
  }
}

class LandingView extends StatelessWidget {
  const LandingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const LandingBody();
  }
}
