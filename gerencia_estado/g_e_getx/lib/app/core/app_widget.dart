import 'package:flutter/material.dart';
import 'package:g_e_getx/app/core/routes/routes.dart';
import 'package:get/get.dart';

import 'routes/pages.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Routes.hunt,
      getPages: AppPages.pages,
    );
  }
}
