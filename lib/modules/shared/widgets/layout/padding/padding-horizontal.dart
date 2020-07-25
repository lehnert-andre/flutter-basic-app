import 'package:flutter/material.dart';

class PaddingHorizontal extends StatelessWidget{

  final double padding;

  PaddingHorizontal(this.padding);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(left: padding, right: padding));
  }
}