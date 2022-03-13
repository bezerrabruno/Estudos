import 'package:get/get.dart';

import 'package:p_d_sqflite/app/core/data/dao/user_dao.dart';

class ChecksController extends GetxController {
  final appStorage = Get.find<UserDao>();

  @override
  void onInit() {
    checkUser();
    super.onInit();
  }

  checkUser() async {
    final user = await appStorage.findUser();

    if (user == 1) {
      counterPage();
    } else {
      loginPage();
    }
  }

  loginPage() async {
    await Future.delayed(const Duration(seconds: 2));
    Get.offNamed('/login');
  }

  counterPage() async {
    await Future.delayed(const Duration(seconds: 2));
    Get.offNamed('/counter');
  }
}
