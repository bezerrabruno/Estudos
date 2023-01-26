import 'package:get/get.dart';

import '/app/core/data/app_storage.dart';

import 'controller/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppStorage());
    Get.lazyPut(() => LoginController());
  }
}
