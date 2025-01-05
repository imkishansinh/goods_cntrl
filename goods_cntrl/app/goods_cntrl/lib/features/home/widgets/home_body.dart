import 'package:flutter/material.dart';

import 'package:goods_cntrl/features/home/cubit/cubit.dart';
import 'package:supabase_service/supabase_service.dart';

import '../../../injections/app_injections.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Center(
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  serviceLocator
                      .get<SupabaseClass>()
                      .registerNewUser('c901redmismarttv@gmail.com');
                },
                child: Text('Register'),
              ),
            ],
          ),
        );
      },
    );
  }
}
