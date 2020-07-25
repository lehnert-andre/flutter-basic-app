
import 'package:flutter/material.dart';
import 'package:flutter_basic_app/modules/shared/widgets/typography/typography.package.dart';

class ErrorScreen extends StatelessWidget {

  final title = 'Error';

  final String errorMessage;

  ErrorScreen({ this.errorMessage = 'An error occured.' });

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Headline(errorMessage),
    );
  }
}
