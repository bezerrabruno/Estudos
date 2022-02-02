import 'package:testes_auto/app/external/cep_dio.dart';
import 'package:testes_auto/app/models/cep_model.dart';

class CepController {
  final CepDio dio;

  CepController({required this.dio});

  Future<Cep> searchCep(String cep) async {
    final mapCep = await dio.getCep(cep);
    final cepObject = Cep.fromMap(mapCep);

    return cepObject;
  }
}
