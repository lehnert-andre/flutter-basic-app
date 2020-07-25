import 'package:flutter/material.dart';
import 'package:flutter_basic_app/modules/shared/screens/screen.dart';
import 'package:flutter_basic_app/modules/shared/widgets/typography/typography.package.dart';

class UserProfileScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _UserProfileState();
  }

}


class _UserProfileState extends State<UserProfileScreen> {

  final title = 'Profile';

  @override
  Widget build(BuildContext context) {
    return Screen(
      title: title,
      child: BodyText(title),
    );
  }
}