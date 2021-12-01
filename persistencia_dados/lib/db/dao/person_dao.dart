import 'package:sqflite/sqflite.dart';

import '../app_data.dart';

import '/model/person.dart';

class PersonDao {
  static const String tableSql = 'CREATE TABLE $_tableName('
      '$_id INTEGER PRIMARY KEY, '
      '$_name TEXT, '
      '$_age TEXT, '
      '$_class TEXT, '
      '$_history TEXT, '
      '$_atk INTEGER, '
      '$_def INTEGER, '
      '$_life INTEGER) ';

  static const String _tableName = 'person';
  static const String _id = 'id';
  static const String _name = 'name';
  static const String _age = 'age';
  static const String _class = 'class';
  static const String _history = 'history';
  static const String _atk = 'atk';
  static const String _def = 'def';
  static const String _life = 'life';

  Future<int> save(Person person) async {
    final db = await database();
    return db.insert(_tableName, Person.toMap(person));
  }

  Future<int> update(Person person, int id) async {
    final db = await database();
    return db.update(_tableName, Person.toMap(person), where: '$id = $id');
  }

  Future<Person> find() async {
    final Database db = await database();
    final List<Map<String, dynamic>> result = await db.query(_tableName);

    if (result[0].isEmpty) {
      var newPerson = Person(
        name: 'name',
        age: 'age',
        clas: 'class',
        history: 'history',
        atk: 0,
        def: 0,
        life: 0,
      );

      db.insert(_tableName, Person.toMap(newPerson));
      final List<Map<String, dynamic>> result = await db.query(_tableName);

      final Person person = Person.fromMap(result[0]);
      return person;
    } else {
      final Person person = Person.fromMap(result[0]);
      return person;
    }
  }
}
