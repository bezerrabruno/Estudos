import 'package:get/get.dart';

import '/app/core/data/app_storage.dart';
import '/app/core/routes/routes.dart';

class LoginController extends GetxController {
  final appStorage = Get.find<AppStorage>();

  setUser(String name) async {
    appStorage.user.val = true;
    appStorage.userName.val = name;

    Get.offNamed(Routes.cep);
  }
}
