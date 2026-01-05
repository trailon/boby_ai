import 'package:boby_ai/app/env/envied.dart';

enum AppEnvFlavor { dev, stage, prod }

late final AppEnvFlavor flavor;

late final AppEnv appEnv;

late final String appName;

extension FlavorExt on String {
  AppEnvFlavor get flavor =>
      AppEnvFlavor.values.firstWhere((e) => e.name.toLowerCase() == this, orElse: () => AppEnvFlavor.dev);
}
