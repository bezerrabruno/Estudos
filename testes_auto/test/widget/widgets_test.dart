import 'package:flutter_test/flutter_test.dart';
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

  group('Seach Widgets', () {
    testWidgets('Existing TextField', (WidgetTester tester) async {
      final elevatedButton = find.byType(ElevatedButton);

      expect(elevatedButton, findsOneWidget);
    });

    testWidgets('existing card Cep', (WidgetTester tester) async {
      await tester.pumpWidget(material);

      final elevatedButton = find.byWidgetPredicate((widget) {
        if (widget is ElevatedButton) {
          return widget.child is Text;
        }
        return false;
      });

      expect(elevatedButton, findsOneWidget);
    });
  });

  group('Test Widgets', () {
    testWidgets('Search TextField, enter text.', (tester) async {
      await tester.pumpWidget(material);

      final textField = find.byType(TextField);

      expect(textField, findsOneWidget);

      await tester.enterText(textField, 'entrou');

      final textFieldEnter = find.byWidgetPredicate((widget) {
        if (widget is TextField) {
          return widget.controller!.text == 'entrou';
        }
        return false;
      });

      expect(textFieldEnter, findsOneWidget);
    });
  });
}
