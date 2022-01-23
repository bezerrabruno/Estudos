import 'package:clean_architecture/app/modules/cep/domain/interfaces/infra/cep_repository.dart';

import '../interfaces/domain/search_cep.dart';

import '../entities/cep.dart';

class SearchCepImpl implements SearchCep {
  final CepRepository repository;

  const SearchCepImpl(this.repository);

  @override
  void checkCep(String cep) {
    // Verification
    seachCep(cep);
  }

  @override
  Future<Cep> seachCep(String cep) async {
    try {
      final result = await repository.searchCep(cep);
      throw UnimplementedError();
    } catch (e) {
      throw UnimplementedError();
    }
  }
}
