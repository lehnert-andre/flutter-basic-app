import 'package:flutter/material.dart';
import 'package:flutter_basic_app/app/config/app-routes.dart';

AppBar buildAppBar(BuildContext context,
    String title,
    {
      bool showActions = true
    }) {

  var actions = <Widget>[
    IconButton(
      icon: Icon(Icons.person),
      onPressed: () {
        Routes.navigateTo(context, Routes.signIn);
      },
    ),
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