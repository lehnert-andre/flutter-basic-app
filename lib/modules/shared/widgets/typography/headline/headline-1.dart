import 'package:flutter/material.dart';

class Headline extends StatelessWidget {
  final String data;

  Headline(this.data);

  @override
  Widget build(BuildContext context) {
    return Text(data, style: Theme.of(context).textTheme.headline1,);
  }

}