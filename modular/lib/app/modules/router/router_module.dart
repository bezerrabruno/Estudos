import 'package:flutter_modular/flutter_modular.dart';

import 'router_page.dart';

class RouterModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const RouterPage()),
      ];
}
