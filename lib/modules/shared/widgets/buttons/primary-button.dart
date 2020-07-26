import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget{

  final Widget child;
  final Function onPressed;

  PrimaryButton({
    @required this.child,
    @required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Theme.of(context).primaryColor,
      child: child,
      onPressed: onPressed
    );
  }
}