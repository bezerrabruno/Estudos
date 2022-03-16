import 'package:modular/app/modules/dependencies/dio/cep_http.dart';
import 'package:modular/app/modules/dependencies/models/cep_model.dart';

class DependenciesController {
  final CepDio cepDio;

  const DependenciesController(this.cepDio);

  Future<Cep> searchCep(String cepText) async {
    final mapCep = await cepDio.getDio(cepText);

    return Cep.fromMap(mapCep);
  }
}
