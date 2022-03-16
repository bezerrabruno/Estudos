import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/enums/status_type.dart';
import '../../../controller/cep_controller/cep_controller.dart';
import 'widgets/card_cep.dart';

class CepPage extends StatefulWidget {
  const CepPage({Key? key}) : super(key: key);

  @override
  State<CepPage> createState() => _CepPageState();
}

class _CepPageState extends State<CepPage> {
  TextEditingController editingController = TextEditingController();

  final CepController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Obx(() {
              return Padding(
                padding: const EdgeInsets.all(32),
                child: CardCep(cep: controller.card),
              );
            }),
            Padding(
              padding: const EdgeInsets.all(32),
              child: TextField(
                controller: editingController,
                decoration: const InputDecoration(hintText: 'CEP'),
              ),
            ),
            Obx(() {
              if (controller.state == StatusType.SUCCESS) {
                return Center(
                  child: ElevatedButton(
                    onPressed: () {
                      controller.state = StatusType.LOAD;
                      controller.searchCep(editingController.text);
                    },
                    child: const Text('Confirm'),
                  ),
                );
              } else if (controller.state == StatusType.LOAD) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (controller.state == StatusType.ERROR) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(controller.error),
                    ),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          controller.state = StatusType.LOAD;
                          controller.searchCep(editingController.text);
                        },
                        child: const Text('Retry'),
                      ),
                    ),
                  ],
                );
              } else {
                return const SizedBox();
              }
            })
          ],
        ),
      ),
    );
  }
}
