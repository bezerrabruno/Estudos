import 'package:get/get.dart';

import '/app/modules/checks/pages/check_page.dart';
import '/app/modules/login/pages/login_page.dart';

import '/app/modules/checks/checks_binding.dart';
import '/app/modules/login/login_binding.dart';

import '/app/modules/cep/pages/cep_page.dart';
import '/app/modules/cep/cep_bindin.dart';

import 'routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.checks,
      page: () => const ChecksPage(),
      transition: Transition.native,
      binding: ChecksBinding(),
    ),
    GetPage(
      name: Routes.login,
      page: () => const LoginPage(),
      transition: Transition.cupertino,
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.cep,
      page: () => const CepPage(),
      transition: Transition.cupertino,
      binding: CepBinding(),
    ),
  ];
}
