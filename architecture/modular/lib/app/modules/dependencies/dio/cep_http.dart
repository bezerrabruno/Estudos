import 'package:dio/dio.dart';

class CepDio {
  Future<Map<String, dynamic>> getDio(String cep) async {
    try {
      var response = await Dio().get('https://viacep.com.br/ws/$cep/json/');
      return response.data;
    } catch (e) {
      rethrow;
    }
  }
}
