import 'package:flutter_test/flutter_test.dart';
import 'package:dio/dio.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter/material.dart';

import 'package:testes_auto/app/controllers/cep_controller.dart';
import 'package:testes_auto/app/external/cep_dio.dart';
import 'package:testes_auto/app/pages/cep_page.dart';

import '../mocks/dio_mock.dart';

void main() {
  final dio = DioMock();
  final cepDio = CepDio(dio: dio);
  final cepController = CepController(dio: cepDio);
  final cepPage = CepPage(controller: cepController);
  final material = MaterialApp(home: cepPage);

  group('Chamada de Cep', () {
    late Finder textField;
    late Finder button;
    late Finder card;

    testWidgets('Search TextField, Enter text.', (tester) async {
      await tester.pumpWidget(material);

      textField = find.byType(TextField);

      expect(textField, findsOneWidget);

      await tester.enterText(textField, '04387230');
    });

    testWidgets('Search button, Tap, Search textCep.', (tester) async {
      when(dio.get('04387230')).thenAnswer((realInvocation) async {
        return Response(
          requestOptions: RequestOptions(path: 'path'),
          statusCode: 200,
          data: {
            'cep': '04387-230',
            'logradouro': 'Rua Professor Nelson de Senna',
            'complemento': '',
            'bairro': 'Cidade Domitila',
            'localidade': 'São Paulo',
            'uf': 'SP',
            'ibge': '3550308',
            'gia': '1004',
            'ddd': '11',
            'siafi': '7107',
          },
        );
      });

      await tester.pumpWidget(material);

      button = find.byType(ElevatedButton);

      expect(button, findsOneWidget);

      await tester.tap(button);

      await tester.pumpAndSettle();

      card = find.text('cep: 04387-230');

      expect(card, findsOneWidget);
    });
  });
}
