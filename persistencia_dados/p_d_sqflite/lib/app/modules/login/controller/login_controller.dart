import 'package:get/get.dart';

import '/app/core/data/dao/user_dao.dart';

class LoginController extends GetxController {
  final appStorage = Get.find<UserDao>();

  setUser(String name) async {
    appStorage.updateUser(1);
    appStorage.updateName(name);

    Get.offNamed('/counter');
  }
}
