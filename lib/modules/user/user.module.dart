import 'package:flutter_basic_app/modules/shared/modules/module.dart';
import 'package:flutter_basic_app/modules/user/data-provider/user.data-provider.dart';
import 'package:get_it/get_it.dart';

export 'provider/user.provider.dart';

class UserModule extends Module {

  @override
  void registerServices() {
    GetIt.I.registerLazySingleton(() => UserDataProvider());
  }

}