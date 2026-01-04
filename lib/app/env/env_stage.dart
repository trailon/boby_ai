import 'package:boby_ai/app/env/envied.dart';
import 'package:boby_ai/app/env/envied_interface.dart';
import 'package:envied/envied.dart';

part 'env_stage.g.dart';

@Envied(name: 'Env', path: '.env.stage', obfuscate: true, requireEnvFile: true)
final class StageEnv implements AppEnv, AppEnvFields {
  StageEnv();
  @override
  @EnviedField(varName: 'BASE_URL')
  final String baseUrl = _Env.baseUrl;

  @override
  @EnviedField(varName: 'BEARER_TOKEN')
  final String bearerToken = _Env.bearerToken;
}
