import '../provider/api_provider.dart';

class CepRepository {
  final CepApi api;

  CepRepository(this.api);

  Future<Map<String, dynamic>> searchCep(String cep) async {
    final result = await api.searchCep(cep);
    return result;
  }
}
