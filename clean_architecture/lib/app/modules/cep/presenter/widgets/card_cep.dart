import 'package:clean_architecture/app/modules/cep/domain/entities/cep.dart';
import 'package:flutter/material.dart';

class CardCep extends StatelessWidget {
  final Cep cep;
  const CardCep({Key? key, required this.cep}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Center(
          child: Text(
            'Info',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
        const Divider(
          color: Colors.white,
        ),
        Text('cep: ${cep.cep}'),
        Text('logradouro: ${cep.logradouro}'),
        Text('complemento: ${cep.complemento}'),
        Text('bairro: ${cep.bairro}'),
        Text('localidade: ${cep.localidade}'),
        Text('uf: ${cep.uf}'),
        Text('ibge: ${cep.ibge}'),
        Text('gia: ${cep.gia}'),
        Text('ddd: ${cep.ddd}'),
        Text('siafi: ${cep.siafi}'),
      ],
    );
  }
}
