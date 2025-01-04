import 'package:flutter/material.dart';
import 'package:goods_cntrl/features/setting/cubit/cubit.dart';
import 'package:goods_cntrl/features/setting/widgets/setting_body.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SettingCubit(),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Settings'),
        ),
        body: SettingView(),
      ),
    );
  }
}

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SettingBody();
  }
}
