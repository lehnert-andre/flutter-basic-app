
import 'package:flutter/material.dart';
import 'package:flutter_basic_app/app/authentication/authentication.package.dart';
import 'package:flutter_basic_app/app/layout/app-bar.dart';
import 'package:flutter_basic_app/app/layout/app-navigation-drawer.dart';
import 'package:flutter_basic_app/modules/shared/shared.module.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

typedef BuildContent = Widget Function(BuildContext, AuthenticationState);

class Screen extends StatelessWidget {

  final Widget child;
  final String title;
  final AppBar appBar;
  final bool showDrawer;
  final BuildContent buildContent;

  Screen({
    this.child, // screen content
    @required this.buildContent, // dynamic function with access to the authentication state
    this.title = '', // AppBar title
    this.appBar, // custom app bar
    this.showDrawer = true, // show navigation drawer
  });

  @override
  Widget build(BuildContext context) {

    var defaultAppBar = buildAppBar(context, title);
    if (appBar != null) {
      defaultAppBar = appBar;
    }

    var defaultDrawer;
    if (showDrawer) {
      defaultDrawer = buildNavigationDrawer(context);
    }

    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      buildWhen: (previous, current) => previous != current,
      builder: (BuildContext context, state) {
        return Scaffold(
          appBar: defaultAppBar,
          drawer: defaultDrawer,
          body: PaddingAll(
            padding: 20,
            child: buildContent(context, state)
          ),
        );
      }
    );
  }
}