import 'package:flutter/material.dart';
import 'package:flutter_basic_app/app/app-bar.dart';
import 'package:flutter_basic_app/modules/shared/screens/screen.dart';
import 'package:flutter_basic_app/modules/shared/widgets/typography/typography.package.dart';

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
    return Screen(
      title: title,
      child: BodyText(title),
      fetchData: getMessage,
      appBar: buildAppBar(context, title, showActions: false),
      showDrawer: false,
    );
  }


  static const TIMEOUT = const Duration(seconds: 5);

  getMessage() async {
    return new Future.delayed(TIMEOUT, () => 'Welcome to your async screen');
  }
}