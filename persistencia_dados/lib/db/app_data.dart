import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import 'dao/person_dao.dart';

Database? _database;

Future<Database> database() async {
  if (_database != null) {
    return _database!;
  } else {
    _database = await _initDB('estudo.db');
    return _database!;
  }
}

Future<Database> _initDB(String filePath) async {
  final path = join(await getDatabasesPath(), filePath);

  return openDatabase(
    path,
    version: 1,
    onCreate: (Database db, int version) async {
      await db.execute(PersonDao.tableSql);
    },
  );
}
