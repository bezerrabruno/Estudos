import 'package:flutter_modular/flutter_modular.dart';

import 'dependencies_page.dart';
import 'dio/cep_http.dart';

class DependenciesModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.lazySingleton((i) => CepDio()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const DependenciesPage()),
      ];
}
