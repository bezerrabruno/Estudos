import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ChecksController extends GetxController {
  @override
  void onInit() {
    print('here');
    checkUser();
    super.onInit();
  }

  checkUser() async {
    final _prefs = await SharedPreferences.getInstance();
    final user = _prefs.getBool('user') ?? false;

    if (user == true) {
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
