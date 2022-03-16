import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routes/pages.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Dio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/checks',
      getPages: AppPages.pages,
    );
  }
}
