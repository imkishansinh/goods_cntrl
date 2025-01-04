import 'package:flutter/material.dart';
import 'package:goods_cntrl/features/setting/cubit/cubit.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SettingBody extends StatelessWidget {
  const SettingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingCubit, SettingState>(
      builder: (context, state) {
        return ListTile(
          title: Text('Logout'),
          onTap: () {
            Supabase.instance.client.auth.signOut();
          },
        );
      },
    );
  }
}
