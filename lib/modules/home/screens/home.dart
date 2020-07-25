import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter_basic_app/app/app-bar.dart';
import 'package:flutter_basic_app/app/app-navigation-drawer.dart';
import 'package:flutter_basic_app/modules/shared/screens/screen.dart';
import 'package:flutter_basic_app/modules/shared/widgets/typography/typography.package.dart';

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
    return Screen(
      title: title,
      child: BodyText(title),
    );
  }


  static const TIMEOUT = const Duration(seconds: 5);

  getMessage() async {
    return new Future.delayed(TIMEOUT, () => 'Welcome to your async screen');
  }

}