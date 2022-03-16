import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:w_a_dio/app/modules/cep/datasource/cep_http.dart';

import '/app/core/data/app_storage.dart';

import '../models/cep_model.dart';

enum AppState {
  initial,
  loading,
  success,
  failure,
}

class CepController extends GetxController {
  final CepDio dio;

  CepController({required this.dio});

  final appStorage = Get.find<AppStorage>();

  final TextEditingController controllerText = TextEditingController();

  final randomList = <String>[
    '05164-020',
    '23915-503',
    '72911-009',
    '48288-970',
    '01311-000',
  ];

  final _state = AppState.initial.obs;

  AppState get state => _state.value;
  set state(AppState newcep) => _state.value = newcep;

  final _name = ''.obs;
  String get name => _name.value;
  set name(String newcep) => _name.value = newcep;

  final _cep = Cep().obs;
  Cep get cep => _cep.value;
  set cep(Cep newcep) => _cep.value = newcep;

  final _randomCep = 0.obs;
  int get randomCep => _randomCep.value;
  set randomCep(int newcep) => _randomCep.value = newcep;

  @override
  void onInit() {
    name = appStorage.userName.val;
    super.onInit();
  }

  Future<void> searchCepRandom() async {
    if (randomCep <= 4) {
      controllerText.text = randomList[randomCep];
    } else {
      randomCep = 0;
      controllerText.text = randomList[randomCep];
    }

    randomCep++;
  }

  Future<void> searchCep() async {
    state = AppState.loading;

    final mapCep = await dio.getCep(controllerText.text);

    controllerText.text = '';

    if (mapCep.isEmpty) {
      await Future.delayed(const Duration(seconds: 2));
      state = AppState.failure;
    } else {
      await Future.delayed(const Duration(seconds: 1));
      cep = Cep.fromMap(mapCep);
      state = AppState.success;
    }
  }
}
