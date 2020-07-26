import 'package:flutter/material.dart';

class PaddingTop extends StatelessWidget{

  final double padding;
  final Widget child;

  PaddingTop({
    @required this.padding,
    this.child
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(top: padding), child: child);
  }
}