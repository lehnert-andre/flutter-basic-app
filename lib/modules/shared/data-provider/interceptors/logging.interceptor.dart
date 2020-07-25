import 'package:http_interceptor/http_interceptor.dart';

class LoggingInterceptor implements InterceptorContract {

  @override
  Future<RequestData> interceptRequest({RequestData data}) async {
    var method = data.method;
    var url = data.url;
    var body = data.body;

    print('Call $method $url with $body');
    return data;
  }

  @override
  Future<ResponseData> interceptResponse({ResponseData data}) async {
    var method = data.method;
    var url = data.url;
    var body = data.body;
    var status = data.statusCode;

    print('Receive $method $url response with ($status): $body');

    return data;
  }

}