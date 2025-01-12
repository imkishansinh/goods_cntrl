import 'package:flutter/material.dart';
import 'package:goods_cntrl/features/login/view_model/login_viewmodel.dart';
import 'package:goods_cntrl/features/setting/widgets/setting_body.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({
    super.key,
    required this.viewModel,
  });

  final LoginViewmodel viewModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Settings'),
      ),
      body: SettingBody(),
    );
  }
}
