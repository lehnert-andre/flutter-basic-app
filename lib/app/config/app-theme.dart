// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class AppTheme {
  static const primaryColor = Colors.cyan;
  static const textColor = Colors.white;
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
    ),
  );

}
