import 'package:clean_architecture/app/modules/cep/infra/interfaces/cep_datasource.dart';
import 'package:clean_architecture/app/modules/cep/infra/models/cep_model.dart';

import '../../domain/entities/response_cep.dart';
import '../../domain/errors/cep_failure.dart';
import '../../domain/interfaces/infra/cep_repository.dart';

class CepRepositoryImpl implements CepRepository {
  final CepDatasource datasource;

  CepRepositoryImpl(this.datasource);

  @override
  Future<ResponseCep> searchCep(String cep) async {
    final dynamic result = await datasource.searchCep(cep);

    if (result is Map) {
      return ResponseCep(right: CepModel.fromMap(result));
    } else {
      return ResponseCep(left: FCUnknownError());
    }
  }
}
