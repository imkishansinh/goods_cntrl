import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:goods_cntrl/features/setting/cubit/cubit.dart';
import 'package:goods_cntrl/injections/app_injections.dart';
import 'package:goods_cntrl/router/routes.dart';
import 'package:supabase_service/supabase_service.dart';

class SettingBody extends StatelessWidget {
  const SettingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingCubit, SettingState>(
      builder: (context, state) {
        return ListTile(
          title: Text('Logout'),
          onTap: () {
            serviceLocator.get<SupabaseClass>().signout().then((_) {
              context.replaceNamed(Routes.login.name.toString());
            });
          },
        );
      },
    );
  }
}
