import 'package:flutter/material.dart';

class PaddingLeft extends StatelessWidget{

  final double padding;

  PaddingLeft(this.padding);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(left: padding));
  }
}