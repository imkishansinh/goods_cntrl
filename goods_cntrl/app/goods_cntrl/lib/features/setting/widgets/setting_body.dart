import 'package:flutter/material.dart';
import 'package:goods_cntrl/features/setting/cubit/cubit.dart';

class SettingBody extends StatelessWidget {
  const SettingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingCubit, SettingState>(
      builder: (context, state) {
        return Center(child: Text(state.customProperty));
      },
    );
  }
}
