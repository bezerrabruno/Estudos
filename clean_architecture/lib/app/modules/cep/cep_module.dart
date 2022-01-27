import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'presenter/blocs/cep/cep_bloc.dart';
import 'domain/usecases/search_cep_impl.dart';
import 'infra/repositories/cep_repository_impl.dart';
import 'external/datasource/cep_datasource_impl.dart';

import 'presenter/cep_page.dart';

class CepModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.lazySingleton((i) => CepBloc(i())),
        Bind.lazySingleton((i) => SearchCepImpl(i())),
        Bind.lazySingleton((i) => CepRepositoryImpl(i())),
        Bind.lazySingleton((i) => CepDatasourceImpl(i())),
        Bind.lazySingleton((i) => Dio()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const CepPage()),
      ];
}
