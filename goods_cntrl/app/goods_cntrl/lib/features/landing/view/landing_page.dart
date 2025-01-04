import 'package:flutter/material.dart';

import 'package:goods_cntrl/features/landing/cubit/cubit.dart';
import 'package:goods_cntrl/features/landing/widgets/landing_body.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LandingCubit(),
      child: Scaffold(
        body: LandingView(),
      ),
    );
  }
}

class LandingView extends StatefulWidget {
  const LandingView({super.key});

  @override
  State<LandingView> createState() => _LandingViewState();
}

class _LandingViewState extends State<LandingView> {
  @override
  void initState() {
    super.initState();
    context.read<LandingCubit>().landingOperation(context);
  }

  @override
  Widget build(BuildContext context) {
    return const LandingBody();
  }
}
