import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/login_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller = Get.find<LoginController>();

  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Create a new User',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 32),
              TextField(
                controller: textController,
                decoration: const InputDecoration(hintText: 'Your Name'),
              ),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {
                  controller.setUser(textController.text);
                },
                child: const Text('Save new user'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
