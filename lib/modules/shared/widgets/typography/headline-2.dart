import 'package:flutter/material.dart';

class Headline2 extends StatelessWidget {
  final String data;

  Headline2(this.data);

  @override
  Widget build(BuildContext context) {
    return Text(data, style: Theme.of(context).textTheme.headline2,);
  }

}