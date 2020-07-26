import 'package:flutter/material.dart';

class FormCard extends StatelessWidget{

  final List<Widget> children;

  FormCard({
    @required this.children
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding:EdgeInsets.only(left: 20, right: 20),
        child: Card(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: children,
            ),
          ),
        ),
    );
  }
}