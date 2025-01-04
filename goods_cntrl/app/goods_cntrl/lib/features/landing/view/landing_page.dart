import 'package:flutter/material.dart';
import 'package:goods_cntrl/features/landing/cubit/cubit.dart';
import 'package:goods_cntrl/features/landing/widgets/landing_body.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LandingCubit(),
      child: const Scaffold(
        body: LandingView(),
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
