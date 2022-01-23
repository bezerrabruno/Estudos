import '../../entities/cep.dart';

abstract class SearchCep {
  void checkCep(String cep);

  Future<Cep> seachCep(String cep);
}
