import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CounterController extends GetxController {
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
    final _prefs = await SharedPreferences.getInstance();
    userName = _prefs.getString('userName') ?? '';
    clicks = _prefs.getInt('clicks') ?? 0;
  }

  updateClick() async {
    final _prefs = await SharedPreferences.getInstance();
    await _prefs.setInt('clicks', clicks + 1);
    clicks++;
  }

  logout() async {
    final _prefs = await SharedPreferences.getInstance();
    await _prefs.setBool('user', false);
    await _prefs.setString('userName', '');
    await _prefs.setInt('clicks', 0);

    Get.offAllNamed('login');
  }
}
