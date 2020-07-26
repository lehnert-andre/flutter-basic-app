import 'package:flutter/material.dart';

class PaddingHorizontal extends StatelessWidget{

  final double padding;
  final Widget child;

  PaddingHorizontal({
    @required this.padding,
    this.child
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(left: padding, right: padding), child: child);
  }
}