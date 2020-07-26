import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter_basic_app/app/application.module.dart';
import 'package:flutter_basic_app/modules/shared/shared.module.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SplashState();
  }
}


class _SplashState extends State<SplashScreen> {

  void route() {
    Routes.navigateAndResetHistoryTo(context, Routes.HOME);
  }

  Future<Timer> startTime() async {
    var duration = new Duration(seconds: 3);
    return new Timer(duration, route);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
//    AssetImage assetImage = AssetImage("images/app_logo.png");
//    Image image = Image(
//      image: assetImage,
//      height: 200.0,
//      width: 250.0,
//    );

    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              color: AppTheme.textColor,
              gradient: LinearGradient(
                  colors: [ AppTheme.primaryColor, AppTheme.backgroundColor ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter
              )
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
//            Container(
//              child: image,
//            ),
//            Padding(padding: EdgeInsets.only(top: 20.0)),
            Headline('Hello!'),
            PaddingTop(20.0),   // padding top for button
          ],
        )
      ],
    );
  }
}