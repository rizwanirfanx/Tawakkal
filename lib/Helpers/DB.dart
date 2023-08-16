import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  late Database _database;

  Future<Database> openDatabaseConnection() async {
    final databasesPath = await getDatabasesPath();
    final path = join(databasesPath, 'my_database.db');

    // Open the database
    _database = await openDatabase(
      path,
      version: 3,
      onCreate: (db, version) {
        db.execute('CREATE TABLE users(id INTEGER PRIMARY KEY, first_name TEXT, last_name TEXT, email TEXT, password TEXT)');
      },
    );

    return _database;
  }

  Future<Database> get database async {
    if (!_database.isOpen) {
      return await openDatabaseConnection();
    }
    return _database;
  }

  Future<void> closeDatabase() async {
    if (_database != null && _database.isOpen) {
      await _database.close();
    }
  }
}
