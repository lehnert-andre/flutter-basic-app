import 'package:flutter/material.dart';

class PaddingLeft extends StatelessWidget{

  final double padding;
  final Widget child;

  PaddingLeft({
    @required this.padding,
    this.child
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(left: padding), child: child);
  }
}