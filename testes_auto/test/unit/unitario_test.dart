import 'package:flutter_test/flutter_test.dart';
import 'package:dio/dio.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:testes_auto/app/models/cep_model.dart';

void main() {
  final Dio dio = Dio(BaseOptions());
  final DioAdapter dioAdapter = DioAdapter(dio: dio);

  late String path;

  setUp(() {
    path = 'https://viacep.com.br/ws/04387230/json/';

    dioAdapter.onGet(
      path,
      (server) => server.reply(200, {
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
      }),
    );
  });

  group('Get Dio', () {
    test('Entrega um string Cep, devolve um map.', () async {
      final response = await dio.get(path);

      expect(response.statusCode, 200);

      expect(response.data, isA<Map>());
    });

    test('Coleta um map, devolve um obj Cep.', () async {
      final response = await dio.get(path);

      final cepObject = Cep.fromMap(response.data);

      expect(cepObject, isA<Cep>());
    });
  });
}
