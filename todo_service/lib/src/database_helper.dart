import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:todo_service/src/constants.dart';

class DatabaseHelper {
  static Database? _database;

  static Future<Database?> get database async {
    if (_database == null || !(_database!.isOpen)) {
      await _openDatabase();
    }
    return _database;
  }

  static _openDatabase() async {
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, DatabaseConstants.databaseName);
    _database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      // When creating the db, create the table
      await db.execute(
          'CREATE TABLE ${DatabaseConstants.tableName} (${DatabaseConstants.columnId} INTEGER PRIMARY KEY AUTOINCREMENT, ${DatabaseConstants.columnTask} TEXT, ${DatabaseConstants.columnComplete} INTEGER)');
    });
  }

  static close() {
    _database!.close();
  }
}
