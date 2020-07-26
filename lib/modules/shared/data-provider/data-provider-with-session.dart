
import 'package:flutter/cupertino.dart';
import 'package:flutter_basic_app/app/authentication/authentication.package.dart';
import 'package:flutter_basic_app/modules/shared/data-provider/data-provider.dart';

class DataProviderWithSession extends DataProvider {

  Session _session;

  void useSessionOf(BuildContext context) {
    _session = AuthenticationBloc.of(context).select(AuthenticationSelector.session);
  }

  void useSession(Session session) {
    _session = session;
  }

  void clearSession() {
    _session = null;

    print('Clear session');
  }

  String get token {
    return _session.token;
  }

  @override
  getHeaders() {
    if (token != null) {
      headers.putIfAbsent('Authorization', () => 'Bearer $token');
    } else {
      headers.remove('Authorization');
    }

    return headers;
  }
}