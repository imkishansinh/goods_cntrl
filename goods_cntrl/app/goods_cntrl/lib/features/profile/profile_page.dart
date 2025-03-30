import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:goods_cntrl/features/profile/view_model/profile_viewmodel.dart';
import 'package:goods_cntrl/features/profile/widgets/profile_body.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    super.key,
    required this.viewModel,
  });

  final ProfileViewmodel viewModel;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(l10n.profile),
      ),
      body: ProfileBody(),
    );
  }
}
