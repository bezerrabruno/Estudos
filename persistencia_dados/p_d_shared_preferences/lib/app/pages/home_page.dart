import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = TextEditingController();

  String userName = '';

  getUserName() async {
    final _prefs = await SharedPreferences.getInstance();
    userName = _prefs.getString('userName') ?? '';
    setState(() {});
  }

  setUserName(String name) async {
    final _prefs = await SharedPreferences.getInstance();
    await _prefs.setString('userName', name);
  }

  @override
  Widget build(BuildContext context) {
    getUserName();
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome $userName'),
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
                  setUserName(_controller.text);
                  Get.snackbar(
                    'User Name',
                    'Your name has been saved as ${_controller.text}',
                    colorText: Colors.white,
                    backgroundColor: Colors.black54,
                  );
                  _controller.text = '';
                  getUserName();
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
