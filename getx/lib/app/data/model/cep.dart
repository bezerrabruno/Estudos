import 'package:json_annotation/json_annotation.dart';

part 'cep.g.dart';

@JsonSerializable()
class Cep {
  final String? cep;
  final String? logradouro;
  final String? complemento;
  final String? bairro;
  final String? localidade;
  final String? uf;
  final String? ibge;
  final String? gia;
  final String? ddd;
  final String? siafi;

  Cep({
    this.cep = '',
    this.logradouro = '',
    this.complemento = '',
    this.bairro = '',
    this.localidade = '',
    this.uf = '',
    this.ibge = '',
    this.gia = '',
    this.ddd = '',
    this.siafi = '',
  });

  factory Cep.fromJson(Map<String, dynamic> json) => _$CepFromJson(json);
  Map<String, dynamic> toJson() => _$CepToJson(this);
}
