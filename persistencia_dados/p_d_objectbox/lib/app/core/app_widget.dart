import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:p_d_get_storage/app/core/routes/pages.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Get Storage',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/checks',
      getPages: AppPages.pages,
    );
  }
}
