import 'package:flutter_modular/flutter_modular.dart';

import 'module1_page.dart';

class Module1Module extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const Module1Page()),
      ];
}
