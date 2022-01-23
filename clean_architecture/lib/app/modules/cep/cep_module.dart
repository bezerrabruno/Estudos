import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'infra/repositories/cep_repository_impl.dart';
import 'external/datasource/cep_datasource_impl.dart';

import 'presenter/cep_page.dart';

class CepModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.lazySingleton((i) => CepRepositoryImpl(i())),
        Bind.lazySingleton((i) => CepDatasourceImpl(i())),
        Bind.lazySingleton((i) => Dio()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const CepPage()),
      ];
}
