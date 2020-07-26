import 'package:flutter/material.dart';
import 'package:flutter_basic_app/app/authentication/authentication.package.dart';
import 'package:flutter_basic_app/modules/home/data-provider/home.data-provider.dart';
import 'package:flutter_basic_app/modules/shared/shared.module.dart';
import 'package:flutter_basic_app/modules/shared/utils/sleep.dart';
import 'package:flutter_basic_app/modules/user/types/types.package.dart';
import 'package:get_it/get_it.dart';

class HomeScreen extends StatelessWidget {

  final title = 'Home';
  HomeDataProvider get homeDataProvider => GetIt.I<HomeDataProvider>(); // get service instance from service locator

  @override
  Widget build(_) {

    return Screen(
      title: title,
      buildContent: buildContent,
    );
  }

  Widget buildContent(BuildContext context, AuthenticationState state) {
    return Builder(
      builder: (_) {
        return buildText(_, state);
      },
    );
  }

  Widget buildText(_, AuthenticationState state) {
    return BodyText('Home with session user: ${state?.session?.username ?? 'Unknown'}');
  }
}