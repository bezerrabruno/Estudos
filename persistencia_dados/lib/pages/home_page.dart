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

  late Person _person = Person(name: '', age: '', clas: '', history: '');

  Future<void> _updateState() async {
    await _dao.update(
      Person(name: 'Bruno', age: '20', clas: 'Ladino', history: '...'),
      1,
    );
    setState(() {});
  }

  void initialState() async {
    _person = await _dao.find();
    await Future.delayed(const Duration(seconds: 2));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    initialState();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: _person.name == ''
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
                    ),
                    Text(
                      _person.age,
                    ),
                    Text(
                      _person.clas,
                    ),
                    Text(
                      _person.history,
                    ),
                  ],
                ),
              ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _updateState,
        child: const Icon(Icons.add),
      ),
    );
  }
}
