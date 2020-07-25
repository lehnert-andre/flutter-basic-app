import 'package:flutter/material.dart';

class PaddingTop extends StatelessWidget{

  final double padding;

  PaddingTop(this.padding);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(top: padding));
  }
}