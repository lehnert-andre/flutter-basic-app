import 'package:flutter/material.dart';
import 'package:flutter_basic_app/app/app.dart';
import 'package:flutter_basic_app/modules/user/data-provider/user.data-provider.dart';
import 'package:flutter_basic_app/modules/user/provider/user.provider.dart';
import 'package:flutter_basic_app/modules/user/user.module.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

void importModules() {
  UserModule().importModule();
  // TODO import further modules
}

void main() {
  // init application with all modules and services
  importModules();

  runApp(Main());
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (context) => UserProvider()),
        ChangeNotifierProvider(create: (context) => UserProvider()),
      ],
      child: App(),
    );
  }
}

