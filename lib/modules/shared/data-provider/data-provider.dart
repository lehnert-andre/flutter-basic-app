
import 'dart:convert';
import 'package:flutter_basic_app/modules/shared/types/types.package.dart';
import 'package:http/http.dart';
import 'package:http_interceptor/http_interceptor.dart';

import 'interceptors/default-header.interceptor.dart';
import 'interceptors/logging.interceptor.dart';
import 'json-response.dart';

class DataProvider {
  Client _client;
  Map<String, String> headers = {};

  DataProvider({ List<InterceptorContract> additionalInterceptors = const [] }) {
    _client = HttpClientWithInterceptor.build(interceptors: [
      LoggingInterceptor(), DefaultHeaderInterceptor(),
      ...additionalInterceptors
    ]);
  }

  Future<JsonResponse> GET(String url, { String jwt }) async {
    _defineJWT(jwt);

    var response = await _client.get(url, headers: getHeaders());

    var statusCode = response.statusCode;
    var body = response.body;

    return JsonResponse(
        statusCode,
        jsonDecode(body) as Map<String, dynamic>,
        rawBody: body
    );
  }

  Future<JsonResponse> POST(String url, TransferObject dataObject,
      { String jwt }) async {
    _defineJWT(jwt);

    var json = jsonEncode(dataObject);

    var response = await _client.post(url, body: json, headers: headers);

    var statusCode = response.statusCode;
    var body = response.body;

    return JsonResponse(
        statusCode,
        jsonDecode(body) as Map<String, dynamic>,
        rawBody: body
    );
  }

  void _defineJWT(String jwt) {
    if (jwt != null) {
      headers.putIfAbsent('Authorization', () => 'Bearer $jwt');
    }
  }

  /// possible @override
  getHeaders() {
    return headers;
  }
}