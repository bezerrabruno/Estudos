import 'package:get/get.dart';
import 'package:getx/app/data/model/cep.dart';

import '../data/enums/status_type.dart';
import 'cep_repository.dart';

class CepController {
  final CepRepository repository;

  CepController(this.repository);

  final _state = StatusType.SUCCESS.obs;
  StatusType get state => _state.value;
  set state(StatusType value) => _state.value = value;

  final _error = ''.obs;
  String get error => _error.value;
  set error(String value) => _error.value = value;

  final _card = Cep().obs;
  Cep get card => _card.value;
  set card(Cep value) => _card.value = value;

  Future searchCep(String cep) async {
    final Map<String, dynamic> result = await repository.searchCep(cep);

    if (result['right'] != null) {
      card = result['right'];
      state = StatusType.SUCCESS;
    } else {
      card = Cep();
      error = 'Erro, Tente Novamente';
      state = StatusType.ERROR;
    }
  }
}
