import 'package:flutter/material.dart';

class PaddingAll extends StatelessWidget{

  final double padding;

  PaddingAll(this.padding);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(padding));
  }
}