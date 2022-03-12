import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../data/app_storage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _storage = AppStorage();

  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome ${_storage.userName.val}'),
        centerTitle: true,
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 64),
        child: ElevatedButton(
          onPressed: () => Get.toNamed('/counter'),
          child: const Text('Go to counter page'),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: _controller,
                decoration: const InputDecoration(hintText: 'Your Name'),
              ),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {
                  _storage.userName.val = _controller.text;
                  Get.snackbar(
                    'User Name',
                    'Your name has been saved as ${_controller.text}',
                    colorText: Colors.white,
                    backgroundColor: Colors.black54,
                  );
                  _controller.text = '';
                  setState(() {});
                },
                child: const Text('Save new name'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
