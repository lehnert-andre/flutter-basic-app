import 'package:flutter/material.dart';
import 'package:flutter_basic_app/modules/home/data-provider/home.data-provider.dart';
import 'package:flutter_basic_app/modules/shared/shared.module.dart';
import 'package:flutter_basic_app/modules/user/types/types.package.dart';
import 'package:get_it/get_it.dart';

class HomeScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }

}


class _HomeState extends State<HomeScreen> {

  final title = 'Home';
  HomeDataProvider get homeDataProvider => GetIt.I<HomeDataProvider>(); // get service instance from service locator
  bool _isLoading = false;
  UserDO user;

  @override
  void initState() {
    _fetchData();

    super.initState();
  }

  void _fetchData() async {
    setState(() {
      _isLoading = true;
    });

    try {
      homeDataProvider.useSessionOf(context);
//      var userDO = await homeDataProvider.sendWhoAmIRequest(); TODO

//      await sleep(seconds: 1); // TODO remove
//
//      setState(() {
//        user = userDO;
//      });

    } catch(e) {
      print('Error: $e');
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(_) {

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
    );
  }

  Widget buildContent(_) {
    return BodyText('Home with user name: ${user != null ? user.email : 'Unknown'}');
  }
}