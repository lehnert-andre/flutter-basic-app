
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter_basic_app/modules/shared/data-provider/data-provider.dart';
import 'package:flutter_basic_app/modules/shared/types/types.package.dart';
import 'package:flutter_basic_app/modules/user/user.module.dart';
import 'package:http/http.dart';
import 'package:http_interceptor/http_interceptor.dart';
import 'package:provider/provider.dart';

import 'interceptors/default-header.interceptor.dart';
import 'interceptors/logging.interceptor.dart';
import 'json-response.dart';

class DataProviderWithSession extends DataProvider {

  UserProvider _userProvider;

  void useSessionOf(BuildContext context) {
    _userProvider = Provider.of<UserProvider>(context, listen: false);
  }

  String get jwt {
    return _userProvider.jwt;
  }

  @override
  getHeaders() {
    if (jwt != null) {
      headers.putIfAbsent('Authorization', () => 'Bearer $jwt');
    }

    return headers;
  }
}