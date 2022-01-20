import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular/app/modules/dependencies/controller/dependencies_controller.dart';

import '../dio/cep_http.dart';
import '../models/cep_model.dart';

class DependenciesPage extends StatefulWidget {
  const DependenciesPage({Key? key}) : super(key: key);

  @override
  State<DependenciesPage> createState() => _DependenciesPageState();
}

class _DependenciesPageState extends State<DependenciesPage> {
  DependenciesController controller = Modular.get();

  final TextEditingController _controllerCep = TextEditingController();

  Cep? cep;

  update() async {
    cep = await controller.searchCep(_controllerCep.text);
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
                    controller: _controllerCep,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      hintText: 'CEP',
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => update(),
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
}
