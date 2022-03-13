import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:p_d_shared_preferences/app/core/routes/pages.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Shared Preferences',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.grey[200]),
      initialRoute: '/check',
      getPages: AppPages.pages,
    );
  }
}
