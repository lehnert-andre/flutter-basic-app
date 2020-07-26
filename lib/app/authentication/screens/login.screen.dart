import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basic_app/app/config/app-routes.dart';
import 'package:flutter_basic_app/modules/shared/shared.module.dart';

import '../bloc/authentication.bloc.dart';

class LogInScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Screen(
      title: Routes.LOG_IN.label,
      showDrawer: false,
      showActions: false,
      buildContent: _buildContent,
    );
  }

  Widget _buildContent(context, state) {
    TextEditingController userTextField = TextEditingController(text: 'ligadefault');
    TextEditingController passwordTextField = TextEditingController(text: 'user');

    return FormCard(
        children: [
          Headline(Routes.LOG_IN.label),
          _userNameTextfield(context, userTextField),
          _passwordTextfield(context, passwordTextField),
          SizedBox(
            height: 24,
          ),
          _submitButton(context, userTextField, passwordTextField)
        ],
    );
  }

  TextFormField _userNameTextfield(BuildContext context, controller) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: 'E-Mail',
      ),
      minLines: 1,
      keyboardType: TextInputType.emailAddress,
    );
  }

  TextFormField _passwordTextfield(BuildContext context, controller) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: 'Password',
      ),
      obscureText: true,
      minLines: 1,
      autofocus: false,
      keyboardType: TextInputType.text,
    );
  }

  PrimaryButton _submitButton(context, TextEditingController userTextField, TextEditingController passwordTextField) {
    return PrimaryButton(
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
    );
  }
}
