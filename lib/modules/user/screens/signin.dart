import 'package:flutter/material.dart';
import 'package:flutter_basic_app/app/application.module.dart';
import 'package:flutter_basic_app/app/config/app-routes.dart';
import 'package:flutter_basic_app/modules/shared/screens/screen.dart';
import 'package:flutter_basic_app/modules/shared/widgets/layout/layout.package.dart';
import 'package:flutter_basic_app/modules/user/data-provider/user.data-provider.dart';
import 'package:flutter_basic_app/modules/user/provider/user.provider.dart';
import 'package:flutter_basic_app/modules/user/types/types.package.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

class SignInScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _SignInState();
  }

}


class _SignInState extends State<SignInScreen> {

  UserDataProvider get userDataProvider => GetIt.I<UserDataProvider>(); // get service instance from service locator

  final title = 'Sign In';
  bool _isLoading = false;


  @override
  Widget build(BuildContext context) {
    return Screen(
      title: title,
      child: Builder(
        builder: (_) {
          if (_isLoading) {
            return LoadingIndicator();
          }
          return buildContent(_);
        },
      ),
      appBar: buildAppBar(context, title, showActions: false),
      showDrawer: false,
    );
  }

  Widget buildContent(BuildContext context) {
    var user = Provider.of<UserProvider>(context);

    TextEditingController userTextField = TextEditingController(text: 'ligadefault');
    TextEditingController passwordTextField = TextEditingController(text: 'user');

    return Center(
      child: Container(
        padding: EdgeInsets.all(80.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login',
              style: Theme.of(context).textTheme.headline1,
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
                  var userDO = await userDataProvider.sendSignInRequest(
                      CredentialsTO(userName, password));
                  user.user = userDO;

                  Routes.navigateTo(context, Routes.HOME);

                } catch(e) {
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