import 'package:flutter/material.dart';

class AppTheme {
  static const primaryColor = Colors.cyan;
  static const textColor = Colors.black87;
  static const backgroundColor = Colors.white;

  static const fontFamily = 'OpenSans';

  static final theme = ThemeData(
    primaryColor: primaryColor,
    primarySwatch: primaryColor,
    backgroundColor: backgroundColor,
    textTheme: TextTheme(
      headline1: TextStyle(
        fontFamily: fontFamily,
        fontWeight: FontWeight.w600,
        fontSize: 24,
        color: textColor,
      ),
      headline2: TextStyle(
        fontFamily: fontFamily,
        fontWeight: FontWeight.w600,
        fontSize: 20,
        color: textColor,
      ),
      headline3: TextStyle(
        fontFamily: fontFamily,
        fontWeight: FontWeight.w600,
        fontSize: 16,
        color: textColor,
      ),
      bodyText1: TextStyle(
        fontFamily: fontFamily,
        fontWeight: FontWeight.w400,
        fontSize: 16,
        color: textColor,
      ),
    ),
  );

}
