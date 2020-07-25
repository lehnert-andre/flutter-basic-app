import 'package:flutter_basic_app/modules/shared/modules/module.dart';
import 'package:flutter_basic_app/modules/user/data-provider/user.data-provider.dart';
import 'package:flutter_basic_app/modules/user/provider/user.provider.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

export 'provider/user.provider.dart';

class UserModule extends Module {

  static List<SingleChildWidget> providers = [
    Provider(create: (context) => UserProvider()),
    ChangeNotifierProvider(create: (context) => UserProvider()),
  ];

  @override
  void registerServices() {
    GetIt.I.registerLazySingleton(() => UserDataProvider());
  }
}