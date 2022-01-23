import 'package:clean_architecture/app/modules/cep/domain/entities/cep.dart';
import 'package:clean_architecture/app/modules/cep/infra/interfaces/cep_datasource.dart';
import 'package:clean_architecture/app/modules/cep/infra/models/cep_model.dart';

import '../../domain/interfaces/infra/cep_repository.dart';

class CepRepositoryImpl implements CepRepository {
  final CepDatasource datasource;

  CepRepositoryImpl(this.datasource);

  @override
  Future<Cep> searchCep(String cep) async {
    try {
      final result = await datasource.searchCep(cep);
      return CepModel.fromMap(result);
    } catch (e) {
      throw UnimplementedError();
    }
  }
}
