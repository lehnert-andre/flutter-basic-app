import 'package:flutter/material.dart';
import 'package:flutter_basic_app/app/authentication/authentication.package.dart';
import 'package:flutter_basic_app/app/config/app-routes.dart';

AppBar buildAppBar(BuildContext context,
    String title,
    {
      bool showActions = true
    }) {

  var actions = <Widget>[

  ];

  if (!showActions) { // hide actions
    actions = <Widget>[];
  }

  return AppBar(
    centerTitle: true,
    title: Text(title),
    actions: actions,
  );
}