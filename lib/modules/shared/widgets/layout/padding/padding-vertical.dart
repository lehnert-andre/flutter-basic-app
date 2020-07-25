import 'package:flutter/material.dart';

class PaddingVertical extends StatelessWidget{

  final double padding;

  PaddingVertical(this.padding);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(bottom: padding, top: padding));
  }
}