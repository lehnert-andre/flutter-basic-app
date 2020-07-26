import 'dart:async';

import 'package:flutter_basic_app/modules/shared/data-provider/data-provider.package.dart';
import 'package:meta/meta.dart';

import '../types/types.package.dart';
import 'mapper/session.mapper.dart';

class AuthenticationDataProvider extends DataProvider {
  final String _userEndpoint = 'http://localhost:9000/v1/user';

  Future<Session> logIn({
    @required AuthenticationRequest authenticationRequest
  }) async {
    assert(authenticationRequest != null);
    assert(authenticationRequest.username != null);
    assert(authenticationRequest.password != null);

    var url = _userEndpoint + '/signin';

    var response = await POST(url, authenticationRequest);

    if (response.isSuccessful) {
      return toSession(AuthenticationResponse.fromJson(response.json));
    } else {
      return null;
    }
  }
}
