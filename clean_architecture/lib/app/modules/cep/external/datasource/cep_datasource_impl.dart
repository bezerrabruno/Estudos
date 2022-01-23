import 'package:dio/dio.dart';

import '../../infra/interfaces/cep_datasource.dart';

class CepDatasourceImpl implements CepDatasource {
  final Dio dio;

  const CepDatasourceImpl(this.dio);

  @override
  Future searchCep(String cep) async {
    try {
      final result = await dio.get('https://viacep.com.br/ws/$cep/json/');
      return result;
    } catch (e) {
      rethrow;
    }
  }
}
