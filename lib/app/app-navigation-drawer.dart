import 'package:flutter/material.dart';
import 'package:flutter_basic_app/modules/shared/widgets/asset/asset.package.dart';
import 'package:flutter_basic_app/modules/shared/widgets/typography/typography.package.dart';

import 'config/app-routes.dart';
import 'config/app-theme.dart';

Drawer buildNavigationDrawer(BuildContext context,
    ) {

  var routes = Routes.visibleRoutes;

  return Drawer(
    child: ListView.builder(
          padding: EdgeInsets.zero,
          itemBuilder: (_, index) {
            return Builder(
              builder: (_) {
                if (index == 0) { // workaround to add the header
                  return DrawerHeader(
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          child: Headline('Basic App'),
                        ),
                        Positioned(
                          child: new Align(
                            alignment: FractionalOffset.bottomLeft,
                            child: RaisedButton.icon(
                              icon: Icon(Routes.SIGN_IN.icon),
                              label: BodyText(Routes.SIGN_IN.label),
                              onPressed: () {
                                Routes.navigateTo(context, Routes.SIGN_IN);
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: AppTheme.primaryColor,
                    ),
                  );
                }

                TextIcon leading;
                if (routes[index - 1].icon != null) {
                  leading = TextIcon(routes[index - 1].icon);
                }

                // index = 1 := fist route
                return ListTile(
                  title: BodyText(routes[index - 1].label),
                  leading: leading,
                  onTap: () {
                    Routes.navigateTo(context, routes[index - 1]);
                  },
                );
              }

            );
          },
          itemCount: routes.length + 1, // workaround to add the header
        ),
  );
}