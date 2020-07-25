import 'package:flutter/material.dart';
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
                    child: Headline('Basic App'),
                    decoration: BoxDecoration(
                      color: AppTheme.primaryColor,
                    ),
                  );
                }

                // index = 1 := fist route
                return ListTile(
                  title: BodyText(routes[index - 1].label),
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