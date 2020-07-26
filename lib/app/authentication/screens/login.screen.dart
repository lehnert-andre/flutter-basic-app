import 'package:flutter_basic_app/app/config/app-routes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

import '../bloc/authentication.bloc.dart';

class LogInScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    TextEditingController userTextField = TextEditingController(text: 'ligadefault');
    TextEditingController passwordTextField = TextEditingController(text: 'user');

    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: BlocBuilder<AuthenticationBloc, AuthenticationState>(
                  buildWhen: (previous, current) => previous.session != current.session,
                  builder: (BuildContext context, state) {
                    return Center(
                      child: Container(
                        padding: EdgeInsets.all(80.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Login',
                              style: Theme
                                  .of(context)
                                  .textTheme
                                  .headline1,
                            ),
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
                            RaisedButton(
                              color: Colors.cyan,
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
                  },
                ),
      ),
    );
  }
}
