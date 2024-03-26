import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:goods_cntrl/go_router.dart';

import 'injection/get_it_injection.dart';

Future<void> main() async {
  // Load environment variables
  await dotenv.load(fileName: '.env');
  // Setup dependency injection
  setupDependencyInjection();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: goRouter,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
