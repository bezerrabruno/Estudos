import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/checks_controller.dart';

class ChecksPage extends StatefulWidget {
  const ChecksPage({Key? key}) : super(key: key);

  @override
  State<ChecksPage> createState() => _ChecksPageState();
}

class _ChecksPageState extends State<ChecksPage> {
  final controller = Get.find<ChecksController>();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SizedBox(
          height: 150,
          width: 150,
          child: CircularProgressIndicator(
            strokeWidth: 32,
          ),
        ),
      ),
    );
  }
}
