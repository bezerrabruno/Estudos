import 'package:flutter_modular/flutter_modular.dart';

import 'module2_page.dart';

class Module2Module extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const Module2Page()),
      ];
}
