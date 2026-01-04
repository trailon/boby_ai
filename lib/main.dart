import 'package:boby_ai/app/env/app_flavor.dart';
import 'package:boby_ai/app/env/envied.dart';
import 'package:boby_ai/boby_ai.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  flavor = const String.fromEnvironment('flavor').flavor;
  appEnv = AppEnv();
  runApp(const BobyAi());
}
