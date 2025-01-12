import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:supabase_service/supabase_service.dart';

import '../../../router/routes.dart';

class SettingBody extends StatefulWidget {
  const SettingBody({super.key});

  @override
  State<SettingBody> createState() => _SettingBodyState();
}

class _SettingBodyState extends State<SettingBody> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text('Profile'),
          onTap: () {
            _navigateToProfile();
          },
        ),
        ListTile(
          title: Text('Logout'),
          onTap: () {
            context.read<SupabaseClass>().signout().then(
                  _navigateToLogin,
                );
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
