import 'package:get/get.dart';

import '/app/core/data/app_storage.dart';
import '/app/core/routes/routes.dart';

class ChecksController extends GetxController {
  final appStorage = Get.find<AppStorage>();

  @override
  void onInit() {
    checkUser();
    super.onInit();
  }

  checkUser() async {
    final user = appStorage.user.val;

    if (user == true) {
      counterPage();
    } else {
      loginPage();
    }
  }

  loginPage() async {
    await Future.delayed(const Duration(seconds: 2));
    Get.offNamed(Routes.login);
  }

  counterPage() async {
    await Future.delayed(const Duration(seconds: 2));
    Get.offNamed(Routes.cep);
  }
}
