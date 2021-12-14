import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import 'dao/person_dao.dart';

class Teste {
  static Future<Database?> data() async {
    return openDatabase(
      join(await getDatabasesPath(), 'demo.db'),
      version: 1,
      onCreate: (db, version) async {
        return db.execute(PersonDao.tableSql);
      },
    );
  }
}
