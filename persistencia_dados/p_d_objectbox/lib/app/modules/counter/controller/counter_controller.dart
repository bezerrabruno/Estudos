import 'package:get/get.dart';

import '/app/core/data/app_storage.dart';

class CounterController extends GetxController {
  final appStorage = Get.find<AppStorage>();

  final _userName = ''.obs;
  String get userName => _userName.value;
  set userName(String value) => _userName.value = value;

  final _clicks = 0.obs;
  int get clicks => _clicks.value;
  set clicks(int value) => _clicks.value = value;

  @override
  void onInit() {
    userName = appStorage.userName.val;
    clicks = appStorage.clicks.val;
    super.onInit();
  }

  updateClick() async {
    appStorage.clicks.val++;
    clicks++;
  }

  logout() async {
    appStorage.user.val = false;
    appStorage.userName.val = '';
    appStorage.clicks.val = 0;

    Get.offAllNamed('/checks');
  }
}
