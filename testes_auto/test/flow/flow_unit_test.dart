import 'package:flutter_test/flutter_test.dart';
import 'package:dio/dio.dart';
import 'package:mockito/mockito.dart';

import 'package:testes_auto/app/controllers/cep_controller.dart';
import 'package:testes_auto/app/external/cep_dio.dart';

import '../mocks/dio_mock.dart';

import 'package:testes_auto/app/models/cep_model.dart';

void main() {
  final dio = DioMock();
  final cepDio = CepDio(dio: dio);
  final controller = CepController(dio: cepDio);

  test('Flow, Controller by External.', () async {
    when(dio.get('path')).thenAnswer((invocation) async {
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

    final result = await controller.searchCep('04387230');

    expect(result, isA<Cep>());
    expect(result.cep, equals('04387-230'));
  });
}
