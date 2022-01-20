import 'package:flutter_modular/flutter_modular.dart';

import 'controller/dependencies_controller.dart';
import 'page/dependencies_page.dart';
import 'dio/cep_http.dart';

class DependenciesModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.lazySingleton((i) => DependenciesController(i())),
        Bind.lazySingleton((i) => CepDio()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const DependenciesPage()),
      ];
}
