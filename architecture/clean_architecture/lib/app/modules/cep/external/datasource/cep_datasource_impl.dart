import 'package:dio/dio.dart';

import '../../infra/interfaces/cep_datasource.dart';

class CepDatasourceImpl implements CepDatasource {
  final Dio dio;

  const CepDatasourceImpl(this.dio);

  @override
  Future<dynamic> searchCep(String cep) async {
    try {
      final result = await dio.get<Map>('https://viacep.com.br/ws/$cep/json/');
      return result.data!;
    } catch (e) {
      return e.toString();
    }
  }
}
