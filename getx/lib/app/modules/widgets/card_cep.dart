import 'package:flutter/material.dart';

import '../../data/model/cep.dart';

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
        Text(
          'cep: ${cep.cep}',
          style: const TextStyle(fontSize: 26),
        ),
        Text(
          'logradouro: ${cep.logradouro}',
          style: const TextStyle(fontSize: 26),
        ),
        Text(
          'complemento: ${cep.complemento}',
          style: const TextStyle(fontSize: 26),
        ),
        Text(
          'bairro: ${cep.bairro}',
          style: const TextStyle(fontSize: 26),
        ),
        Text(
          'localidade: ${cep.localidade}',
          style: const TextStyle(fontSize: 26),
        ),
        Text(
          'uf: ${cep.uf}',
          style: const TextStyle(fontSize: 26),
        ),
        Text(
          'ibge: ${cep.ibge}',
          style: const TextStyle(fontSize: 26),
        ),
        Text(
          'gia: ${cep.gia}',
          style: const TextStyle(fontSize: 26),
        ),
        Text(
          'ddd: ${cep.ddd}',
          style: const TextStyle(fontSize: 26),
        ),
        Text(
          'siafi: ${cep.siafi}',
          style: const TextStyle(fontSize: 26),
        ),
      ],
    );
  }
}
