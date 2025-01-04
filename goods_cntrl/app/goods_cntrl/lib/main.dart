import 'package:flutter/material.dart';

import 'app/app.dart';
import 'injections/app_injections.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureInjections();

  runApp(const MyApp());
}
