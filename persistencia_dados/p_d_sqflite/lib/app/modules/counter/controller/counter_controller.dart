import 'package:get/get.dart';

import '/app/core/data/dao/user_dao.dart';

class CounterController extends GetxController {
  final appStorage = Get.find<UserDao>();

  final _userName = ''.obs;
  String get userName => _userName.value;
  set userName(String value) => _userName.value = value;

  final _clicks = 0.obs;
  int get clicks => _clicks.value;
  set clicks(int value) => _clicks.value = value;

  @override
  void onInit() {
    getState();
    super.onInit();
  }

  getState() async {
    userName = await appStorage.findName();
    clicks = await appStorage.findClicks();
  }

  updateClick() async {
    clicks++;
    appStorage.updateClicks(clicks);
  }

  logout() async {
    appStorage.updateUser(0);
    appStorage.updateName('');
    appStorage.updateClicks(0);

    Get.offAllNamed('/checks');
  }
}
