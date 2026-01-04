import 'package:boby_ai/app/env/app_flavor.dart';
import 'package:dio/dio.dart';

class DioClient {
  late final Dio dio;

  DioClient() {
    dio = Dio(
      BaseOptions(
        baseUrl: appEnv.baseUrl,
        headers: {'Authorization': 'Bearer ${appEnv.bearerToken}', 'Content-Type': 'application/json;charset=utf-8'},
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
      ),
    );
  }
}
