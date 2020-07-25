
import 'package:flutter/material.dart';
import 'package:flutter_basic_app/app/app-bar.dart';
import 'package:flutter_basic_app/app/app-navigation-drawer.dart';

class Screen extends StatelessWidget {

  final Widget child;
  final String title;
  final AppBar appBar;
  final bool showDrawer;

  Screen({
    this.child, // screen content
    this.title = '', // AppBar title
    this.appBar, // custom app bar
    this.showDrawer = true, // show navigation drawer
  });

  @override
  Widget build(BuildContext context) {

    var defaultAppBar = buildAppBar(context, title);
    if (appBar != null) {
      defaultAppBar = appBar;
    }

    var defaultDrawer;
    if (showDrawer) {
      defaultDrawer = buildNavigationDrawer(context);
    }

    return Scaffold(
      appBar: defaultAppBar,
      drawer: defaultDrawer,
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: child
      ),
    );
  }
}