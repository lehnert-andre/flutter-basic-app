import 'package:flutter/material.dart';

class PaddingBottom extends StatelessWidget{

  final double padding;
  final Widget child;

  PaddingBottom({
    @required this.padding,
    this.child
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(bottom: padding), child: child,);
  }
}