import 'package:flutter/material.dart';
import 'package:flutter_basic_app/modules/shared/screens/screen.dart';
import 'package:flutter_basic_app/modules/shared/widgets/layout/layout.package.dart';
import 'package:flutter_basic_app/modules/shared/widgets/typography/typography.package.dart';

class UserProfileScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _UserProfileState();
  }

}


class _UserProfileState extends State<UserProfileScreen> {

  final title = 'Profile';
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Screen(
      title: title,
      child: Builder(
        builder: (_) {
          if (_isLoading) {
            return LoadingIndicator();
          }
          return buildContent(_);
        },
      ),
    );
  }

  Widget buildContent(_) {
    return BodyText(title);
  }
}