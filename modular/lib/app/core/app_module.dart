import 'package:flutter_modular/flutter_modular.dart';

import '/app/modules/home/home_module.dart';
import '/app/modules/router/router_module.dart';
import '/app/modules/dependencies/dependencies_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: HomeModule()),
        ModuleRoute('/router', module: RouterModule()),
        ModuleRoute('/dependencies', module: DependenciesModule()),
      ];
}
