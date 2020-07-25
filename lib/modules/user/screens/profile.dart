import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter_basic_app/app/app-bar.dart';
import 'package:flutter_basic_app/app/app-navigation-drawer.dart';
import 'package:flutter_basic_app/modules/shared/widgets/typography/typography.package.dart';

class UserProfileScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _UserProfileState();
  }

}


class _UserProfileState extends State<UserProfileScreen> {

  final title = 'Profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(context, title),
        drawer: buildNavigationDrawer(context),
        body: Container(
          padding: EdgeInsets.all(80.0),
          child: BodyText('Profile'),
        ),
    );
  }
}