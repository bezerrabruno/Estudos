import 'package:get/get.dart';

class CepConnect {
  final GetConnect connect;

  CepConnect({required this.connect});

  Future<Map<String, dynamic>> getCep(String cep) async {
    try {
      var response = await connect.get('https://viacep.com.br/ws/$cep/json/');
      return response.body;
    } catch (e) {
      return {'Error': 'CepInvalid'};
    }
  }
}
