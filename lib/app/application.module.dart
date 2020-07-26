import 'package:flutter_basic_app/app/authentication/authentication.package.dart';
import 'package:flutter_basic_app/modules/shared/modules/module.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/single_child_widget.dart';

export 'app-bar.dart';
export 'app-navigation-drawer.dart';
export 'app.dart';
export 'config/app-globals.dart';
export 'config/app-routes.dart';
export 'config/app-theme.dart';

class ApplicationModule extends Module {

  static List<SingleChildWidget> providers = [
  ];

  @override
  void registerServices() {
    GetIt.I.registerLazySingleton(() => AuthenticationDataProvider());
  }

}