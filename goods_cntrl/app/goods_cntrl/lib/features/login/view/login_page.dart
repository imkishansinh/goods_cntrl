import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:goods_cntrl/core/dimens.dart';
import 'package:goods_cntrl/dependencies/dependencies.dart';
import 'package:goods_cntrl/features/login/view_model/login_viewmodel.dart';
import 'package:goods_cntrl/features/login/widgets/login_body.dart';
import 'package:goods_cntrl/router/routes.dart';
import 'package:supabase_service/supabase_service.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    required this.viewModel,
    super.key,
  });

  final LoginViewmodel viewModel;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
    widget.viewModel.sendOTPToEmail.addListener(_sendOTPToEmailListener);
    locator.get<SupabaseContract>().authStream.listen(_authListener);
    // Future.delayed(Duration(seconds: 1)).then(_emailPrompt);
  }

  // void _emailPrompt(_) {
  //   if (!kIsWeb) {
  //     widget.viewModel.emailHintPrompt.execute();
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(SizeDimens.pagePadding),
        child: LoginBody(),
      ),
    );
  }

  @override
  void dispose() {
    widget.viewModel.sendOTPToEmail.removeListener(_sendOTPToEmailListener);
    super.dispose();
  }

  void _sendOTPToEmailListener() {
    logger.fine('Email is sent to your email address');
  }

  void _authListener(onData) {
    if (onData.session != null) {
      context.pushReplacementNamed(
        Routes.home.name.toString(),
      );
    }
  }
}
