/// Both DebugEnv and ReleaseEnv must implement all these values
abstract interface class AppEnvFields {
  abstract final String baseUrl;
  abstract final String imageBucketUrl;
  abstract final String bearerToken;
  abstract final String variant;
}
