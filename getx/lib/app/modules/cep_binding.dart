import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../data/provider/api_provider.dart';
import 'cep_controller.dart';
import 'cep_repository.dart';

class CepBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(Dio());
    Get.put(CepApi(Get.find()));
    Get.put(CepRepository(Get.find()));
    Get.put(CepController(Get.find()));
  }
}
