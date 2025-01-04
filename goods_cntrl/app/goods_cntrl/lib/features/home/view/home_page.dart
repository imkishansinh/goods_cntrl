import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:goods_cntrl/features/home/cubit/cubit.dart';
import 'package:goods_cntrl/features/home/widgets/home_body.dart';
import 'package:goods_cntrl/router/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(builder: (_) => const HomePage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: Scaffold(
        body: HomeView(),
        appBar: AppBar(
          centerTitle: true,
          title: Text('GoodsCntrl'),
          actions: [
            IconButton(
              onPressed: () {
                context.pushNamed(Routes.setting.name.toString());
              },
              icon: Icon(
                Icons.settings,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeBody();
  }
}
