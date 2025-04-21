import 'package:flutter/material.dart';
import 'package:goods_cntrl/app/app.dart';
import 'package:goods_cntrl/app/di/di.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  configureDependencies();

  runApp(
    const MyApp(),
  );
}
