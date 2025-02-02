import 'package:flutter/material.dart';
import 'package:goods_cntrl/app/app.dart';
import 'package:goods_cntrl/dependencies/dependencies.dart';
import 'package:provider/provider.dart';

import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Env variables
  await dotenv.load(fileName: '.env');

  runApp(
    MultiProvider(
      providers: allTheProviders,
      child: const MyApp(),
    ),
  );
}
