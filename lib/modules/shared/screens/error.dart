
import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {

  final title = 'Error';

  final String errorMessage;

  ErrorScreen({ this.errorMessage = 'An error occured.' });

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:
              Text(
                errorMessage,
                style: Theme.of(context).textTheme.headline1,
              ),
    );
  }
}
