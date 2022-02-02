import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:testes_auto/app/controllers/cep_controller.dart';

import 'app/pages/cep_page.dart';
import 'app/external/cep_dio.dart';

void main() {
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CepPage(
        controller: CepController(
          dio: CepDio(
            dio: Dio(),
          ),
        ),
      ),
    );
  }
}
