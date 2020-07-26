import 'package:flutter_basic_app/modules/shared/data-provider/data-provider.dart';
import 'package:flutter_basic_app/modules/shared/modules/module.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/single_child_widget.dart';

export 'bloc/bloc-observer.dart';
export 'screens/screen.dart';
export 'widgets/asset/asset.package.dart';
export 'widgets/layout/layout.package.dart';
export 'widgets/typography/typography.package.dart';
export 'widgets/buttons/buttons.package.dart';
export 'utils/utils.package.dart';
export 'types/types.package.dart';
export 'data-provider/data-provider.package.dart';
export 'modules/module.dart';

class SharedModule extends Module {

  static List<SingleChildWidget> providers = [
  ];

  @override
  void registerServices() {
  }

  @override
  List<RepositoryProvider> instantiateServices() {
    return [];
  }

}