import 'dart:async';

import 'package:clean_architecture/app/modules/cep/domain/interfaces/infra/cep_repository.dart';

import '../interfaces/domain/search_cep.dart';

import '../entities/cep.dart';

class SearchCepImpl implements SearchCep {
  final CepRepository repository;

  const SearchCepImpl(this.repository);

  @override
  Future<Cep> seachCep(String cep) async {
    // Verification

    try {
      final result = await repository.searchCep(cep);
      return result;
    } catch (e) {
      throw UnimplementedError();
    }
  }
}
