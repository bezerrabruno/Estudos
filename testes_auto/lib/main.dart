import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:testes_auto/dio/cep_dio.dart';

import 'pages/cep_page.dart';

void main() {
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CepPage(
        dio: CepDio(
          dio: Dio(),
        ),
      ),
    );
  }
}