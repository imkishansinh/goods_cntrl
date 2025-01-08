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
    return ListTile(
      title: Text('Logout'),
      onTap: () {
        context.read<SupabaseClass>().signout().then(_signout);
      },
    );
  }

  FutureOr _signout(data) {
    context.replaceNamed(Routes.login.name.toString());
  }
}
