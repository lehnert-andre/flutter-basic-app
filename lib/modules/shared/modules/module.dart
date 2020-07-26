import 'package:flutter_basic_app/modules/shared/data-provider/data-provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/single_child_widget.dart';

abstract class Module {

  void importModule() {
    registerServices();
  }

  /// Method content:
  ///
  /// GetIt.I.registerLazySingleton(() => YourService());
  /// GetIt.I.registerLazySingleton(() => OtherService());
  void registerServices();

  /// Method content:
  ///
  ///  return [
  //      RepositoryProvider<YourService>(create: (context) => GetIt.I<YourService>()),
  //      RepositoryProvider<OtherService>(create: (context) => GetIt.I<OtherService>())
  //    ];
  List<RepositoryProvider> instantiateServices();

}