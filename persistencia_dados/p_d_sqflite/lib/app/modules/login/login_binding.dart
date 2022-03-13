import 'package:get/get.dart';

import '/app/core/data/dao/user_dao.dart';

import 'controller/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserDao());
    Get.lazyPut(() => LoginController());
  }
}
