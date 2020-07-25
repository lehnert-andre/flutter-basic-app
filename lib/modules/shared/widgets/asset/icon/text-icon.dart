import 'package:flutter/material.dart';
import 'package:flutter_basic_app/app/config/app-theme.dart';

class TextIcon extends StatelessWidget{

  final IconData icon;

  TextIcon(this.icon);

  @override
  Widget build(BuildContext context) {
    return Icon(icon, color: AppTheme.textColor,);
  }
}