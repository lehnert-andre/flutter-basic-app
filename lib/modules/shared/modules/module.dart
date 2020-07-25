abstract class Module {

  void importModule() {
    registerServices();
  }

  /// Method content:
  ///
  /// GetIt.I.registerLazySingleton(() => YourService());
  void registerServices();
}