import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:goods_cntrl/dependencies/dependencies.dart';
import 'package:goods_cntrl/features/home/widgets/home_body.dart';
import 'package:goods_cntrl/router/routes.dart';
import 'package:goods_cntrl/utilities/secure_storage/secure_session.dart';
import 'package:provider/provider.dart';
import 'package:supabase_service/supabase_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(builder: (_) => const HomePage());
  }

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    context.read<SecureSession>().isUserRegistered.then((isRegistered) {
      if (!isRegistered) {
        _registerUser();
      } else {
        logger.info('User already registered');
      }
    });
  }

  void _registerUser() {
    logger.info('Registering user');

    context
        .read<SupabaseClass>()
        .registerNewUser(
          SupaUserTableModel(context.read<SupabaseClass>().currentUser!.email!),
        )
        .then(_saveUserSession);
  }

  void _saveUserSession(data) {
    logger.info('save user session');
    context.read<SecureSession>().setUserRegistered();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeView(),
      appBar: AppBar(
        centerTitle: true,
        title: Text('GoodsCntrl'),
        actions: [
          if (context.read<SupabaseClass>().isAuthenticated)
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
