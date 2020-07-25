import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_basic_app/modules/shared/screens/screen.dart';
import 'package:flutter_basic_app/modules/shared/widgets/typography/typography.package.dart';
import 'package:flutter_basic_app/modules/user/user.module.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }

}


class _HomeState extends State<HomeScreen> {

  final title = 'Home';

  @override
  Widget build(BuildContext context) {
    var user = Provider.of<UserProvider>(context);

    return Screen(
      title: title,
      child: BodyText('Home with user name: ${user.email}'),
      fetchData: getMessage,
    );
  }


  static const TIMEOUT = const Duration(seconds: 5);

  getMessage() async {
    return new Future.delayed(TIMEOUT, () => 'Welcome to your async screen');
  }

}