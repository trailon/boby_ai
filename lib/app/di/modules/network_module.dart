import 'package:boby_ai/app/env/app_flavor.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../data/api/tmdb_api.dart';

@module
abstract class NetworkModule {
  @lazySingleton
  Dio dio() {
    return Dio(
      BaseOptions(
        baseUrl: appEnv.baseUrl,
        headers: {'Authorization': 'Bearer ${appEnv.bearerToken}', 'accept': 'application/json'},
      ),
    );
  }

  @lazySingleton
  TmdbApi tmdbApi(Dio dio) {
    return TmdbApi(dio);
  }
}
