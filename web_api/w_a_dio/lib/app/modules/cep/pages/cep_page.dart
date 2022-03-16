import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/cep_controller.dart';

class CepPage extends StatefulWidget {
  const CepPage({
    Key? key,
  }) : super(key: key);

  @override
  _CepPageState createState() => _CepPageState();
}

class _CepPageState extends State<CepPage> {
  final controller = Get.find<CepController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('where are we going ${controller.name}?'),
      ),
      body: Obx(() {
        switch (controller.state) {
          case AppState.loading:
            return const Center(
              child: SizedBox(
                height: 150,
                width: 150,
                child: CircularProgressIndicator(
                  strokeWidth: 32,
                ),
              ),
            );
          case AppState.failure:
          case AppState.initial:
            return Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 300,
                      child: TextFormField(
                        maxLength: 8,
                        controller: controller.controllerText,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: 'CEP',
                          suffixIcon: IconButton(
                            onPressed: () => controller.searchCepRandom(),
                            icon: const Icon(Icons.all_inclusive_outlined),
                          ),
                        ),
                      ),
                    ),
                    controller.state == AppState.failure
                        ? const Text('Failure, try again')
                        : const SizedBox(),
                    ElevatedButton(
                      onPressed: () => controller.validCep(),
                      child: const Text('Search'),
                    ),
                  ]),
            );
          case AppState.success:
            return Center(
              child: Container(
                height: 300,
                width: 320,
                padding: const EdgeInsets.all(16),
                color: Theme.of(context).primaryColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        title(),
                        IconButton(
                          onPressed: () => controller.state = AppState.initial,
                          icon: const Icon(
                            Icons.delete_forever,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    const Divider(
                      color: Colors.white,
                    ),
                    Text('cep: ${controller.cep.cep ?? ''}'),
                    Text('logradouro: ${controller.cep.logradouro ?? ''}'),
                    Text('complemento: ${controller.cep.complemento ?? ''}'),
                    Text('bairro: ${controller.cep.bairro ?? ''}'),
                    Text('localidade: ${controller.cep.localidade ?? ''}'),
                    Text('uf: ${controller.cep.uf ?? ''}'),
                    Text('ibge: ${controller.cep.ibge ?? ''}'),
                    Text('gia: ${controller.cep.gia ?? ''}'),
                    Text('ddd: ${controller.cep.ddd ?? ''}'),
                    Text('siafi: ${controller.cep.siafi ?? ''}'),
                  ],
                ),
              ),
            );
        }
      }),
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
