import 'package:flutter/material.dart';

import 'cep_http.dart';
import 'cep_model.dart';

class CepPage extends StatefulWidget {
  const CepPage({
    Key? key,
  }) : super(key: key);

  @override
  _CepPageState createState() => _CepPageState();
}

class _CepPageState extends State<CepPage> {
  final TextEditingController _controller = TextEditingController();

  Cep? cep;

  update() {
    super.setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search CEP'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              height: 250,
              width: 320,
              padding: const EdgeInsets.all(16),
              color: Theme.of(context).primaryColor,
              child: cep != null
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        title(),
                        const Divider(
                          color: Colors.white,
                        ),
                        Text('cep: ${cep!.cep}'),
                        Text('logradouro: ${cep!.logradouro}'),
                        Text('complemento: ${cep!.complemento}'),
                        Text('bairro: ${cep!.bairro}'),
                        Text('localidade: ${cep!.localidade}'),
                        Text('uf: ${cep!.uf}'),
                        Text('ibge: ${cep!.ibge}'),
                        Text('gia: ${cep!.gia}'),
                        Text('ddd: ${cep!.ddd}'),
                        Text('siafi: ${cep!.siafi}'),
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        title(),
                        const Divider(
                          color: Colors.white,
                        ),
                        const Text('cep: '),
                        const Text('logradouro: '),
                        const Text('complemento: '),
                        const Text('bairro: '),
                        const Text('localidade: '),
                        const Text('uf: '),
                        const Text('ibge: '),
                        const Text('gia: '),
                        const Text('ddd: '),
                        const Text('siafi: '),
                      ],
                    ),
            ),
            Column(
              children: [
                SizedBox(
                  width: 300,
                  child: TextField(
                    controller: _controller,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      hintText: 'CEP',
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => searchCep(),
                  child: const Text('Search'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget title() {
    return const Center(
      child: Text(
        'Info',
        style: TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    );
  }

  Future<void> searchCep() async {
    final mapCep = await CepHttp.getHttp(_controller.text);
    cep = Cep.fromMap(mapCep);
    update();
  }
}
