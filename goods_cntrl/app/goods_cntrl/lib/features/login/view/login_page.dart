import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:goods_cntrl/core/dimens.dart';
import 'package:goods_cntrl/features/login/cubit/cubit.dart';
import 'package:goods_cntrl/features/login/widgets/login_body.dart';
import 'package:goods_cntrl/injections/app_injections.dart';
import 'package:supabase_service/supabase_service.dart';

import '../../../router/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
    serviceLocator.get<SupabaseClass>().listen(
      () {
        context.pushReplacementNamed(Routes.home.name.toString());
      },
      () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: const Scaffold(
        body: LoginView(),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(SizeDimens.pagePadding),
      child: LoginBody(),
    );
  }
}
