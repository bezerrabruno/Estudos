import 'package:dio/dio.dart';

class CepDio {
  final Dio dio;

  CepDio({required this.dio});

  Future<Map<String, dynamic>> getCep(String cep) async {
    try {
      var response = await dio.get('https://viacep.com.br/ws/$cep/json/');
      return response.data;
    } catch (e) {
      rethrow;
    }
  }
}
