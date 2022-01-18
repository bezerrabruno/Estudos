import 'package:flutter/material.dart';

import '../model/person.dart';
import '../db/sqflite/dao/person_dao.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool created = false;
  late Person? _person;

  final PersonDao _dao = PersonDao();

  @override
  void initState() {
    super.initState();
  }

  Future<void> _find() async {
    _person = await _dao.find();
    await Future.delayed(const Duration(seconds: 2));

    if (_person != null) {
      created = true;
    }
    setState(() {});
  }

  Future<void> _update() async {
    await _dao.update(
      Person(name: 'Bruno', age: '20', clas: 'Humano'),
      1,
    );
  }

  Future<void> _save() async {
    await _dao.save(
      Person(name: 'Bruno', age: '20', clas: 'Ladino'),
    );
  }

  @override
  Widget build(BuildContext context) {
    _find();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          created == false
              ? const CircularProgressIndicator()
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      _person!.name,
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      _person!.age,
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      _person!.clas,
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      _person!.history,
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () => _save(),
                child: const Text('Save'),
              ),
              ElevatedButton(
                onPressed: () => _update(),
                child: const Text('Update'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
