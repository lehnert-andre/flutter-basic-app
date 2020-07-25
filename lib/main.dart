import 'package:flutter/material.dart';
import 'package:flutter_basic_app/app/app.dart';
import 'package:flutter_basic_app/modules/home/home.module.dart';
import 'package:flutter_basic_app/modules/user/user.module.dart';
import 'package:provider/provider.dart';

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
        ...HomeModule.providers,
        ...UserModule.providers
        // TODO register further providers to handle the state management
      ],
      child: App(),
    );
  }
}



void importModules() {
  HomeModule().importModule();
  UserModule().importModule();
  // TODO import further modules to provide all module services
}


