import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app/app.dart';

import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'dependencies/dependencies.dart';

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
