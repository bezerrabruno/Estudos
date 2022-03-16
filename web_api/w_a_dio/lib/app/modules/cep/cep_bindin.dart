import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '/app/core/data/app_storage.dart';

import 'controller/cep_controller.dart';
import 'datasource/cep_http.dart';

class CepBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppStorage());
    Get.lazyPut(() => CepController(dio: Get.find()));
    Get.lazyPut(() => CepDio(dio: Get.find()));
    Get.lazyPut(() => Dio());
  }
}
