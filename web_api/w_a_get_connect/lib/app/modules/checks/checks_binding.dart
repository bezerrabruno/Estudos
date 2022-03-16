import 'package:get/get.dart';

import '/app/core/data/app_storage.dart';

import 'controller/checks_controller.dart';

class ChecksBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppStorage());
    Get.lazyPut(() => ChecksController());
  }
}
