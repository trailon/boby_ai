import 'package:boby_ai/app/di/locator.dart';
import 'package:boby_ai/app/env/app_flavor.dart';
import 'package:boby_ai/app/env/envied.dart';
import 'package:boby_ai/boby_ai.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:package_info_plus/package_info_plus.dart';

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  PackageInfo packageInfo = await PackageInfo.fromPlatform();
  flavor = const String.fromEnvironment('flavor').flavor;
  appEnv = AppEnv();
  appName = packageInfo.appName;
  await setupLocator();
  runApp(const BobyAi());
}
