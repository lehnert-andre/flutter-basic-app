import 'package:flutter_basic_app/modules/home/data-provider/home.data-provider.dart';
import 'package:flutter_basic_app/modules/shared/shared.module.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/single_child_widget.dart';


class HomeModule extends Module {

  static List<SingleChildWidget> providers = [
  ];

  @override
  void registerServices() {
    GetIt.I.registerLazySingleton(() => HomeDataProvider());
  }

  @override
  List<RepositoryProvider> instantiateServices() {
    return [
      RepositoryProvider<HomeDataProvider>(create: (context) => GetIt.I<HomeDataProvider>())
    ];
  }

}