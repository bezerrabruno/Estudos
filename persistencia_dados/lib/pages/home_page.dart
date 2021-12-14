import 'package:flutter/material.dart';
import 'package:persistencia_dados/model/person.dart';

import '/db/dao/person_dao.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PersonDao _dao = PersonDao();

  late Person _person;

  @override
  void initState() {
    _person = Person(name: 'name', age: 'age', clas: 'clas');
    super.initState();
  }

  Future<void> _find() async {
    _person = await _dao.find();
    await Future.delayed(const Duration(seconds: 2));
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
        title: const Text('Home'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _person.name == 'name'
              ? const CircularProgressIndicator()
              : Container(
                  height: 200,
                  width: 150,
                  color: Colors.amber,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        _person.name,
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        _person.age,
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        _person.clas,
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        _person.history,
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
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
