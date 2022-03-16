import 'package:flutter_modular/flutter_modular.dart';

import 'router_page.dart';

import 'modules/module1/module1_module.dart';
import 'modules/module2/module2_module.dart';
import 'modules/module3/module3_module.dart';

class RouterModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const RouterPage()),
        ModuleRoute('/module1', module: Module1Module()),
        ModuleRoute('/module2', module: Module2Module()),
        ModuleRoute('/module3', module: Module3Module()),
      ];
}
