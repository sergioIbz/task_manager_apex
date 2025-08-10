import 'package:dio/dio.dart';

class RestClient {
  final Dio dio;

  RestClient({Dio? dio, required String baseUrl})
    : dio =
          dio ??
          Dio(
            BaseOptions(
              baseUrl: baseUrl,
              connectTimeout: const Duration(seconds: 10),
              receiveTimeout: const Duration(seconds: 10),
            ),
          );

  Future<Response> get(String endpoint, {Map<String, dynamic>? params}) async {
    return await dio.get(endpoint, queryParameters: params);
  }

  Future<Response> post(String endpoint, {Map<String, dynamic>? data}) async {
    return await dio.post(endpoint, data: data);
  }
}
