import 'package:get/get.dart';

import 'controller/checks_controller.dart';

class ChecksBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChecksController());
  }
}
