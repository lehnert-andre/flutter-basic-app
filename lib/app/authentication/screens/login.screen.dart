import 'package:flutter_basic_app/app/config/app-routes.dart';
import 'package:flutter_basic_app/modules/shared/shared.module.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

import '../bloc/authentication.bloc.dart';

class LogInScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Screen(
      title: Routes.LOG_IN.label,
      showDrawer: false,
      buildContent: buildContent,
    );
  }

  Widget buildContent(context, state) {
    TextEditingController userTextField = TextEditingController(text: 'ligadefault');
    TextEditingController passwordTextField = TextEditingController(text: 'user');

    return Center(
        child: Container(
          padding: EdgeInsets.all(80.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Headline(Routes.LOG_IN.label),
              TextFormField(
                controller: userTextField,
                decoration: InputDecoration(
                  hintText: 'E-Mail',
                ),
                minLines: 1,
                keyboardType: TextInputType.emailAddress,
              ),
              TextFormField(
                controller: passwordTextField,
                decoration: InputDecoration(
                  hintText: 'Password',
                ),
                obscureText: true,
                minLines: 1,
                autofocus: false,
                keyboardType: TextInputType.text,
              ),
              SizedBox(
                height: 24,
              ),
              PrimaryButton(
                child: Text('LOGIN'),
                onPressed: () async {
                  var userName = userTextField.text;
                  var password = passwordTextField.text;

                  debugPrint('userName: $userName');
                  debugPrint('password: $password');

                  try {
                    AuthenticationBloc.of(context).add(Login(userName, password));

                    Routes.navigateTo(context, Routes.HOME);
                  } catch (e) {
                    print('Error: $e');
                  }
                },
              )
            ],
          ),
        ),
      );
  }
}
