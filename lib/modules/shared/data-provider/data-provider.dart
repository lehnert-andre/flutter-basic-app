
import 'dart:convert';
import 'package:flutter_basic_app/modules/shared/types/types.package.dart';
import 'package:http/http.dart';
import 'package:http_interceptor/http_interceptor.dart';

import 'interceptors/default-header.interceptor.dart';
import 'interceptors/logging.interceptor.dart';
import 'json-response.dart';

class DataProvider {
  Client _client;

  DataProvider({ List<InterceptorContract> additionalInterceptors = const [] }) {
    _client = HttpClientWithInterceptor.build(interceptors: [
      LoggingInterceptor(), DefaultHeaderInterceptor(),
      ...additionalInterceptors
    ]);
  }

  Future<JsonResponse> POST(String url, TransferObject dataObject) async {
      var json = jsonEncode(dataObject);

      var response = await _client.post(url, body: json);

      var statusCode = response.statusCode;
      var body = response.body;

      return JsonResponse(
          statusCode,
          jsonDecode(body) as Map<String, dynamic>,
          rawBody: body
      );
  }
}