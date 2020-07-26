import 'package:flutter_basic_app/app/authentication/authentication.package.dart';
import 'package:flutter_basic_app/modules/shared/shared.module.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/single_child_widget.dart';

export 'layout/app-bar.dart';
export 'layout/app-navigation-drawer.dart';
export 'layout/app.dart';
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

  @override
  List<RepositoryProvider> instantiateServices() {
    return [
      RepositoryProvider<AuthenticationDataProvider>(create: (context) => GetIt.I<AuthenticationDataProvider>())
    ];
  }
}