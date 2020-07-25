import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter_basic_app/app/app-bar.dart';
import 'package:flutter_basic_app/app/app-navigation-drawer.dart';

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
    return Scaffold(
        appBar: buildAppBar(context, title),
        drawer: buildNavigationDrawer(context),
        body: Container(
          padding: EdgeInsets.all(80.0),
          child: Text('Home', style: Theme.of(context).textTheme.headline1),
        ),
    );
  }
}