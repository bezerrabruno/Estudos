import 'package:clean_architecture/app/modules/cep/domain/entities/cep.dart';

class CepModel extends Cep {
  CepModel() : super();

  static Cep fromMap(Map<String, dynamic> map) {
    // Cep(all)
    return Cep(
      cep: map['cep'],
      logradouro: map['logradouro'],
      complemento: map['complemento'],
      bairro: map['bairro'],
      localidade: map['localidade'],
      uf: map['uf'],
      gia: map['ibge'],
      ddd: map['gia'],
      ibge: map['ddd'],
      siafi: map['siafi'],
    );
  }
}
