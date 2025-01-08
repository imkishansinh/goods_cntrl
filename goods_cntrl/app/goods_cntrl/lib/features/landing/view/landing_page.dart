import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:goods_cntrl/dependencies/dependencies.dart';
import 'package:goods_cntrl/features/landing/view_model/landing_viewmodel.dart';
import 'package:goods_cntrl/router/routes.dart';

import 'package:goods_cntrl/features/landing/widgets/landing_body.dart';
import 'package:goods_cntrl/utilities/result.dart';
import 'package:provider/provider.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({
    required this.viewModel,
    super.key,
  });

  final LandingViewmodel viewModel;

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  void initState() {
    super.initState();
    context.read<LandingViewmodel>().userLandedFirst();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    /// Listen the same result
    widget.viewModel.runLandingLogic.addListener(_runLandingLogic);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListenableBuilder(
        listenable: widget.viewModel.runLandingLogic,
        builder: (_, __) {
          return LandingBody();
        },
      ),
    );
  }

  void _runLandingLogic() {
    if (widget.viewModel.runLandingLogic.completed) {
      if (widget.viewModel.runLandingLogic.result is Ok<AppRoute>) {
        context.pushReplacementNamed(
          (widget.viewModel.runLandingLogic.result as Ok<AppRoute>)
              .value
              .name
              .toString(),
        );
        widget.viewModel.runLandingLogic.clearResult();
      } else {
        logger.warning('Something wrong in landing logic');
      }
    }
  }
}
