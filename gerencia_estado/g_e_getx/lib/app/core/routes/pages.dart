import 'package:get/get.dart';

import '../../modules/home/pages/hunt_hub_page.dart';
import '/app/modules/home/pages/profile_page.dart';

import 'routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.hunt,
      page: () => const HuntHubPage(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: Routes.profile,
      page: () => const ProfilePage(),
      transition: Transition.cupertino,
    ),
  ];
}
