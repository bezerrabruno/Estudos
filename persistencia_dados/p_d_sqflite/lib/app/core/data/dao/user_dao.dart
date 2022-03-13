import 'package:sqflite/sqflite.dart';

import '../app_data.dart';

class UserDao {
  static const String tableSql = 'CREATE TABLE $_tableName('
      '$_id INTEGER PRIMARY KEY, '
      '$_user INTEGER, '
      '$_name TEXT, '
      '$_clicks INTEGER) ';

  static const String _tableName = 'user';
  static const String _id = 'id';
  static const String _user = 'user';
  static const String _name = 'name';
  static const String _clicks = 'clicks';

  Future<int> updateUser(int user) async {
    final Database? db = await DB.data();
    return db!.update(_tableName, {'user': user}, where: '0 = 0');
  }

  Future<int> updateName(String name) async {
    final Database? db = await DB.data();
    return db!.update(_tableName, {'name': name}, where: '0 = 0');
  }

  Future<int> updateClicks(int clicks) async {
    final Database? db = await DB.data();
    return db!.update(_tableName, {'clicks': clicks}, where: '0 = 0');
  }

  Future<int> findUser() async {
    final Database? db = await DB.data();
    final List<Map<String, dynamic>> result = await db!.query(_tableName);

    if (result.isEmpty) {
      final Database? db = await DB.data();
      db!.insert(_tableName, {
        'user': 0,
        'name': '',
        'clicks': 0,
      });
      return 0;
    } else {
      final user = result[0];
      return user['user'];
    }
  }

  Future<String> findName() async {
    final Database? db = await DB.data();
    final List<Map<String, dynamic>> result = await db!.query(_tableName);

    if (result.isEmpty) {
      final Database? db = await DB.data();
      db!.insert(_tableName, {
        'user': 0,
        'name': '',
        'clicks': 0,
      });
      return '';
    } else {
      final name = result[0];
      return name['name'];
    }
  }

  Future<int> findClicks() async {
    final Database? db = await DB.data();
    final List<Map<String, dynamic>> result = await db!.query(_tableName);

    if (result.isEmpty) {
      final Database? db = await DB.data();
      db!.insert(_tableName, {
        'user': 0,
        'name': '',
        'clicks': 0,
      });
      return 0;
    } else {
      final clicks = result[0];
      return clicks['clicks'];
    }
  }
}
