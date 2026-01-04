import 'package:boby_ai/app/env/envied.dart';
import 'package:boby_ai/app/env/envied_interface.dart';
import 'package:envied/envied.dart';

part 'env_dev.g.dart';

@Envied(name: 'Env', path: '.env.dev', obfuscate: true, requireEnvFile: true)
final class DevEnv implements AppEnv, AppEnvFields {
  DevEnv();
  @override
  @EnviedField(varName: 'BASE_URL')
  final String baseUrl = _Env.baseUrl;

  @override
  @EnviedField(varName: 'BEARER_TOKEN')
  final String bearerToken = _Env.bearerToken;
}
