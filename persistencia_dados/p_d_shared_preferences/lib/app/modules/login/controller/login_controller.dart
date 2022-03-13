import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController {
  setUser(String name) async {
    final _prefs = await SharedPreferences.getInstance();
    await _prefs.setBool('user', true);
    await _prefs.setString('userName', name);

    Get.offNamed('/counter');
  }
}
