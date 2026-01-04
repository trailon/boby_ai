import 'package:boby_ai/app/env/app_flavor.dart';
import 'package:boby_ai/app/env/env_dev.dart';
import 'package:boby_ai/app/env/env_prod.dart';
import 'package:boby_ai/app/env/env_stage.dart';

import 'envied_interface.dart';

abstract interface class AppEnv implements AppEnvFields {
  factory AppEnv() => _instance;

  static final AppEnv _instance = switch (flavor) {
    AppEnvFlavor.dev => DevEnv(),
    AppEnvFlavor.stage => StageEnv(),
    AppEnvFlavor.prod => ProdEnv(),
  };
}
