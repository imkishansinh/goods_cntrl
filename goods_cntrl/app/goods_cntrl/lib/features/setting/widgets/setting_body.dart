import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:goods_cntrl/utilities/global_var.dart';
import 'package:goods_cntrl/router/routes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:supabase_service/supabase_service.dart';

class SettingBody extends StatefulWidget {
  const SettingBody({super.key});

  @override
  State<SettingBody> createState() => _SettingBodyState();
}

class _SettingBodyState extends State<SettingBody> {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return ListView(
      children: [
        ListTile(
          title: Text(l10n.profile),
          onTap: () {
            _navigateToProfile();
          },
        ),
        ListTile(
          title: Text(l10n.logout),
          onTap: () {
            locator.get<SupabaseContract>().signout().then(_navigateToLogin);
          },
        ),
      ],
    );
  }

  FutureOr _navigateToLogin(data) {
    context.replaceNamed(Routes.login.name.toString());
  }

  FutureOr _navigateToProfile() {
    context.pushNamed(Routes.profile.name.toString());
  }
}
