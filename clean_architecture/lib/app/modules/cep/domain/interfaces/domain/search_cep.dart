import '../../entities/response_cep.dart';

abstract class SearchCep {
  Future<ResponseCep> seachCep(String cep);
}
