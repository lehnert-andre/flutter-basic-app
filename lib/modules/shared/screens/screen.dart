
import 'package:flutter/material.dart';
import 'package:flutter_basic_app/app/app-bar.dart';
import 'package:flutter_basic_app/app/app-navigation-drawer.dart';

class Screen extends StatelessWidget {

  final Widget child;
  final String title;

  Screen({
    this.child,
    this.title = ''
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title),
      drawer: buildNavigationDrawer(context),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: child
      ),
    );
  }

}