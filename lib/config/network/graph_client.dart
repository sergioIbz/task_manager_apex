import 'package:dio/dio.dart';

class GraphClient {
  final Dio dio;

  GraphClient({
    Dio? dio,
    required String baseUrl,
    Map<String, dynamic>? defaultHeaders,
  }) : dio = dio ??
            Dio(
              BaseOptions(
                baseUrl: baseUrl,
                connectTimeout: const Duration(seconds: 10),
                receiveTimeout: const Duration(seconds: 10),
                headers: {
                  'Content-Type': 'application/json',
                  'Accept': 'application/json',
                  ...?defaultHeaders,
                },
              ),
            );

  Future<Response> query(
    String document, {
    Map<String, dynamic>? variables,
    String? operationName,
    Map<String, dynamic>? headers,
    String endpoint = '',
  }) {
    final body = <String, dynamic>{
      'query': document,
      if (variables != null) 'variables': variables,
      if (operationName != null) 'operationName': operationName,
    };
    return dio.post(
      endpoint,
      data: body,
      options: headers != null ? Options(headers: headers) : null,
    );
  }

  Future<Response> mutate(
    String document, {
    Map<String, dynamic>? variables,
    String? operationName,
    Map<String, dynamic>? headers,
    String endpoint = '',
  }) {
    final body = <String, dynamic>{
      'query': document,
      if (variables != null) 'variables': variables,
      if (operationName != null) 'operationName': operationName,
    };
    return dio.post(
      endpoint,
      data: body,
      options: headers != null ? Options(headers: headers) : null,
    );
  }
}
