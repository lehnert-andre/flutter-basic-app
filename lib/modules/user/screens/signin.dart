import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter_basic_app/app/app-bar.dart';

class SignInScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _SignInState();
  }

}


class _SignInState extends State<SignInScreen> {

  final title = 'Sign In';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(context, title, showActions: false),
        body: Container(
          padding: EdgeInsets.all(80.0),
          child: Text('Sign In', style: Theme.of(context).textTheme.headline1),
        ),
    );
  }
}