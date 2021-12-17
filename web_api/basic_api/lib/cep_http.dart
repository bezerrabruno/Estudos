import 'package:dio/dio.dart';

class CepHttp {
  static Future<Map<String, dynamic>> getHttp(String cep) async {
    try {
      var response = await Dio().get('https://viacep.com.br/ws/$cep/json/');
      return response.data;
    } catch (e) {
      rethrow;
    }
  }
}
