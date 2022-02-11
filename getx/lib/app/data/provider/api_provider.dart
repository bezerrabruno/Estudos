import 'package:dio/dio.dart';

import '../model/cep.dart';

const baseUrl = 'https://viacep.com.br/ws/';

class CepApi {
  final Dio dio;

  const CepApi(this.dio);

  Future<Map<String, dynamic>> searchCep(String cep) async {
    try {
      final response = await dio.get('$baseUrl/$cep/json/');
      Cep cepModel = Cep.fromJson(response.data);
      return {
        'right': cepModel,
        'left': null,
      };
    } catch (e) {
      return {
        'right': null,
        'left': e.toString(),
      };
    }
  }
}
