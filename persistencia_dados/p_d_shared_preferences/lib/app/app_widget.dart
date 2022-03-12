import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/counter_page.dart';
import 'pages/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Get Storage',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/home',
      getPages: [
        GetPage(
          name: '/home',
          page: () => const HomePage(),
        ),
        GetPage(
          name: '/counter',
          page: () => const CounterPage(),
          transition: Transition.cupertino,
        ),
      ],
    );
  }
}
