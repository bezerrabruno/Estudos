import 'package:get/get.dart';

import 'package:getx/app/ui/android/cep/cep_page.dart';
import 'package:getx/app/bindings/cep_binding.dart';

import 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.initial,
      page: () => const CepPage(),
      binding: CepBindings(),
    ),
  ];
}
