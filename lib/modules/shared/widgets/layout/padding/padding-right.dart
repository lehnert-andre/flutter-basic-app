import 'package:flutter/material.dart';

class PaddingRight extends StatelessWidget{

  final double padding;

  PaddingRight(this.padding);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(right: padding));
  }
}