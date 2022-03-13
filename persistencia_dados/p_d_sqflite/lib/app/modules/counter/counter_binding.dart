import 'package:get/get.dart';

import '/app/core/data/dao/user_dao.dart';

import 'controller/counter_controller.dart';

class CounterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserDao());
    Get.lazyPut(() => CounterController());
  }
}
