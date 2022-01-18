class Cep {
  final String cep;
  final String logradouro;
  final String complemento;
  final String bairro;
  final String localidade;
  final String uf;
  final String ibge;
  final String gia;
  final String ddd;
  final String siafi;

  Cep(
    this.cep,
    this.logradouro,
    this.complemento,
    this.bairro,
    this.localidade,
    this.uf,
    this.ibge,
    this.gia,
    this.ddd,
    this.siafi,
  );

  static Cep fromMap(Map<String, dynamic> map) {
    return Cep(
      map['cep'],
      map['logradouro'],
      map['complemento'],
      map['bairro'],
      map['localidade'],
      map['uf'],
      map['ibge'],
      map['gia'],
      map['ddd'],
      map['siafi'],
    );
  }
}
