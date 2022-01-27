import '../../entities/cep.dart';

abstract class SearchCep {
  Future<Cep> seachCep(String cep);
}
