import 'package:get/get.dart';

import '/app/core/data/app_storage.dart';

import 'controller/cep_controller.dart';
import 'datasource/cep_http.dart';

class CepBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppStorage());
    Get.lazyPut(() => CepController(connect: Get.find()));
    Get.lazyPut(() => CepConnect(connect: Get.find()));
    Get.lazyPut(() => GetConnect());
  }
}
