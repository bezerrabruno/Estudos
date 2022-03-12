import 'package:get_storage/get_storage.dart';

class AppStorage {
  final GetStorage box = GetStorage();

  final userName = ''.val('userName');
  final clicks = 0.val('clicks');
}
