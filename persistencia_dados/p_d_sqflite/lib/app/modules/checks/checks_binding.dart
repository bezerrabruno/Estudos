import 'package:get/get.dart';

import '/app/core/data/dao/user_dao.dart';

import 'controller/checks_controller.dart';

class ChecksBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserDao());
    Get.lazyPut(() => ChecksController());
  }
}
