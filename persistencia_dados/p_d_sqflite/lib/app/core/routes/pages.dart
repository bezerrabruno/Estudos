import 'package:get/get.dart';

import '/app/modules/checks/pages/check_page.dart';
import '/app/modules/login/pages/login_page.dart';
import '/app/modules/counter/pages/counter_page.dart';

import '/app/modules/checks/checks_binding.dart';
import '/app/modules/login/login_binding.dart';
import '/app/modules/counter/counter_binding.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: '/checks',
      page: () => const ChecksPage(),
      transition: Transition.native,
      binding: ChecksBinding(),
    ),
    GetPage(
      name: '/login',
      page: () => const LoginPage(),
      transition: Transition.cupertino,
      binding: LoginBinding(),
    ),
    GetPage(
      name: '/counter',
      page: () => const CounterPage(),
      transition: Transition.cupertino,
      binding: CounterBinding(),
    ),
  ];
}
