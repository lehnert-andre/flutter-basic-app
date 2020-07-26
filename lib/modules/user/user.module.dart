import 'package:flutter_basic_app/modules/shared/shared.module.dart';
import 'package:flutter_basic_app/modules/user/data-provider/user.data-provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/single_child_widget.dart';

class UserModule extends Module {

  static List<SingleChildWidget> providers = [
  ];

  @override
  void registerServices() {
    GetIt.I.registerLazySingleton(() => UserDataProvider());
  }

  @override
  List<RepositoryProvider> instantiateServices() {
    return [
      RepositoryProvider<UserDataProvider>(create: (context) => GetIt.I<UserDataProvider>())
    ];
  }
}