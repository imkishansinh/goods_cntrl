import 'package:flutter/material.dart';
import 'package:goods_cntrl/l10n/app_localizations.dart';
import 'package:goods_cntrl/features/login/view_model/login_viewmodel.dart';
import 'package:goods_cntrl/features/setting/widgets/setting_body.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key, required this.viewModel});

  final LoginViewmodel viewModel;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text(l10n.settings)),
      body: SettingBody(),
    );
  }
}
