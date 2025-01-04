import 'package:flutter/material.dart';
import 'package:supabase_service/supabase_service.dart';

import 'app/app.dart';
import 'injections/app_injections.dart';

import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Env variables
  await dotenv.load(fileName: '.env');

  // Injections
  await configureInjections();

  // Initialise supabase
  serviceLocator.get<SupabaseClass>().init(
        dotenv.env['supabase_url'] ?? '',
        dotenv.env['supabase_anon_key'] ?? '',
      );

  runApp(const MyApp());
}
