import 'package:get/get.dart';

import '/app/core/data/app_storage.dart';

import 'controller/counter_controller.dart';

class CounterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppStorage());
    Get.lazyPut(() => CounterController());
  }
}
