import '../../entities/cep.dart';

abstract class CepRepository {
  Future<Cep> searchCep(String cep);
}
