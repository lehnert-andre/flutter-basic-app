import 'package:provider/single_child_widget.dart';

abstract class Module {

  void importModule() {
    registerServices();
  }

  /// Method content:
  ///
  /// GetIt.I.registerLazySingleton(() => YourService());
  void registerServices();

}