import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/app/modules/cep_binding.dart';

import 'app/modules/cep_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      initialRoute: '/',
      initialBinding: CepBindings(),
      getPages: [
        GetPage(name: '/', page: () => const CepPage()),
      ],
    );
  }
}
