import 'package:flutter/material.dart';

class PaddingVertical extends StatelessWidget{

  final double padding;
  final Widget child;

  PaddingVertical({
    @required this.padding,
    this.child
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(bottom: padding, top: padding), child: child);
  }
}