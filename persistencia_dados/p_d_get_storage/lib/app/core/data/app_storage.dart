import 'package:get_storage/get_storage.dart';

class AppStorage {
  final GetStorage box = GetStorage();

  final user = false.val('user');
  final userName = ''.val('userName');
  final clicks = 0.val('clicks');
}
