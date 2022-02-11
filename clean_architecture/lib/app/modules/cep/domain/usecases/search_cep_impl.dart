import 'package:clean_architecture/app/modules/cep/domain/interfaces/infra/cep_repository.dart';

import '../entities/response_cep.dart';
import '../interfaces/domain/search_cep.dart';

class SearchCepImpl implements SearchCep {
  final CepRepository repository;

  const SearchCepImpl(this.repository);

  @override
  Future<ResponseCep> seachCep(String cep) async {
    // Verification

    final ResponseCep result = await repository.searchCep(cep);

    return result;
  }
}
