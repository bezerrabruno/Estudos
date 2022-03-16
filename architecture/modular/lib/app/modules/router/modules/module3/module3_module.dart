import 'package:flutter_modular/flutter_modular.dart';

import 'module3_page.dart';

class Module3Module extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const Module3Page()),
      ];
}
