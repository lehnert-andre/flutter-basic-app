import 'package:flutter/material.dart';

class PaddingBottom extends StatelessWidget{

  final double padding;

  PaddingBottom(this.padding);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(bottom: padding));
  }
}