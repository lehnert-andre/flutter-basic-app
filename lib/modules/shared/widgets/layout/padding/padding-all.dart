import 'package:flutter/material.dart';

class PaddingAll extends StatelessWidget{

  final double padding;
  final Widget child;

  PaddingAll({
    @required this.padding,
    this.child
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(padding), child: child,);
  }
}