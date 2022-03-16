import 'package:clean_architecture/app/modules/cep/presenter/blocs/cep/cep_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'blocs/cep/cep_bloc.dart';
import 'blocs/cep/cep_state.dart';
import 'widgets/card_cep.dart';

class CepPage extends StatefulWidget {
  const CepPage({Key? key}) : super(key: key);

  @override
  State<CepPage> createState() => _CepPageState();
}

class _CepPageState extends State<CepPage> {
  TextEditingController cepController = TextEditingController();

  final CepBloc cepBloc = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: BlocBuilder<CepBloc, CepState>(
          bloc: cepBloc,
          builder: (context, cepState) {
            if (cepState is SCInit) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(32),
                    child: TextField(
                      controller: cepController,
                      decoration: const InputDecoration(hintText: 'CEP'),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () =>
                        cepBloc.add(ECSeachCep(cepController.text)),
                    child: const Text('Confirm'),
                  ),
                ],
              );
            }
            if (cepState is SCLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (cepState is SCFailure) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(cepState.message),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      cepController.text = '';
                      cepBloc.add(const ECReset());
                    },
                    child: const Text('Reset'),
                  ),
                ],
              );
            } else if (cepState is SCSuccess) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(32),
                    child: CardCep(cep: cepState.cep),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      cepController.text = '';
                      cepBloc.add(const ECReset());
                    },
                    child: const Text('Reset'),
                  ),
                ],
              );
            } else {
              return Column(
                children: [
                  const Center(
                    child: Text('Paw'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      cepController.text = '';
                      cepBloc.add(const ECReset());
                    },
                    child: const Text('Reset'),
                  ),
                ],
              );
            }
          }),
    ));
  }
}
