import 'package:flutter/material.dart';

class Headline3 extends StatelessWidget {
  final String data;

  Headline3(this.data);

  @override
  Widget build(BuildContext context) {
    return Text(data, style: Theme.of(context).textTheme.headline3,);
  }

}