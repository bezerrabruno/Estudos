import 'package:clean_architecture/app/modules/cep/domain/entities/response_cep.dart';

abstract class CepRepository {
  Future<ResponseCep> searchCep(String cep);
}
