import 'package:flutter/material.dart';

import 'app/app.dart';
import 'injections/app_injections.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureInjections();
  await dotenv.load(fileName: '.env');

  await Supabase.initialize(
    url: dotenv.env['supabase_url'] ?? '',
    anonKey: dotenv.env['supabase_anon_key'] ?? '',
  );

  runApp(const MyApp());
}
