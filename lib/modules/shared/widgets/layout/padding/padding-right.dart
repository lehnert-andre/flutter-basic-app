import 'package:flutter/material.dart';

class PaddingRight extends StatelessWidget{

  final double padding;
  final Widget child;

  PaddingRight({
    @required this.padding,
    this.child
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(right: padding), child: child);
  }
}