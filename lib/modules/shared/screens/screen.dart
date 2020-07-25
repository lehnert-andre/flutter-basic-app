
import 'package:async_loader/async_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basic_app/app/app-bar.dart';
import 'package:flutter_basic_app/app/app-navigation-drawer.dart';
import 'package:flutter_basic_app/modules/shared/screens/default-screens/error.dart';

class Screen extends StatelessWidget {
  final GlobalKey<AsyncLoaderState> _asyncLoaderState = new GlobalKey<AsyncLoaderState>();

  final Widget child;
  final String title;
  final Function fetchData;
  final AppBar appBar;
  final bool showDrawer;

  Screen({
    this.child, // screen content
    this.title = '', // AppBar title
    this.fetchData, // async function to load data on startup // shows loading indicator
    this.appBar, // custom app bar
    this.showDrawer = true // show navigation drawer
  });

  @override
  Widget build(BuildContext context) {

    var initStateFunction = _defaultInitState;
    if (fetchData != null) {
      initStateFunction = fetchData;
    }

    var defaultAppBar = buildAppBar(context, title);
    if (appBar != null) {
      defaultAppBar = appBar;
    }

    var defaultDrawer;
    if (showDrawer) {
      defaultDrawer = buildNavigationDrawer(context);
    }

    var _asyncLoadingContent = new AsyncLoader(
      key: _asyncLoaderState,
      initState: () async => await initStateFunction(),
      renderLoad: () => new Center(child: new CircularProgressIndicator()),
      renderError: ([error]) => ErrorScreen(errorMessage: 'An error occured: ${error}',),
      renderSuccess: ({data}) => child
    );

    return Scaffold(
      appBar: defaultAppBar,
      drawer: defaultDrawer,
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: _asyncLoadingContent
      ),
    );
  }

  _defaultInitState() async {
    return null;
  }
}