import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:goods_cntrl/utilities/global_var.dart';
import 'package:goods_cntrl/features/landing/view_model/landing_viewmodel.dart';
import 'package:goods_cntrl/router/routes.dart';

import 'package:goods_cntrl/features/landing/widgets/landing_body.dart';
import 'package:goods_cntrl/utilities/result.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  late LandingViewmodel landingViewmodel;
  @override
  void initState() {
    super.initState();
    landingViewmodel = locator.get<LandingViewmodel>();

    landingViewmodel.runLandingLogic.execute();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    /// Listen the same result
    landingViewmodel.runLandingLogic.addListener(_runLandingLogic);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListenableBuilder(
        listenable: landingViewmodel.runLandingLogic,
        builder: (_, __) {
          return LandingBody();
        },
      ),
    );
  }

  void _runLandingLogic() {
    if (landingViewmodel.runLandingLogic.completed) {
      if (landingViewmodel.runLandingLogic.result is Ok<AppRoute>) {
        context.pushReplacementNamed(
          (landingViewmodel.runLandingLogic.result as Ok<AppRoute>).value.name
              .toString(),
        );
        landingViewmodel.runLandingLogic.clearResult();
      } else {
        logger.warning('Something wrong in landing logic');
      }
    }
  }
}
