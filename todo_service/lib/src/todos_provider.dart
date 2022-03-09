import 'package:sqflite/sqflite.dart';

import 'constants.dart';
import 'database_helper.dart';

class AddTodoRequest {
  final String task;

  AddTodoRequest(this.task);
}

class UpdateTodoRequest {
  final int id;
  final String task;
  final bool isComplete;

  UpdateTodoRequest(this.id, this.task, this.isComplete);
}

class TodosProvider {
  getTodos() async {
    final Database? database = await DatabaseHelper.database;
    final List<Map> maps = await database!.query(DatabaseConstants.tableName);
    return maps;
  }

  Future<List<Map>> getAllTodos() async {
    final Database? database = await DatabaseHelper.database;
    final List<Map> maps = await database!.query(DatabaseConstants.tableName);
    // return maps.map((e) => Todo.fromMap(e)).toList();
    return maps;
  }

  Future<List<Map>> getIncompleteTodos() async {
    final Database? database = await DatabaseHelper.database;
    final List<Map> maps = await database!.query(
      DatabaseConstants.tableName,
      where: '${DatabaseConstants.columnComplete} = 0',
    );
    return maps;
  }

  Future<List<Map>> getCompleteTodos() async {
    final Database? database = await DatabaseHelper.database;
    final List<Map> maps = await database!.query(
      DatabaseConstants.tableName,
      where: '${DatabaseConstants.columnComplete} = 1',
    );
    return maps;
  }

  Future<int> insertTodo(AddTodoRequest addTodoRequest) async {
    final Database? database = await DatabaseHelper.database;
    int autoIncrementId = await database!.insert(DatabaseConstants.tableName, {
      'task': addTodoRequest.task,
      'complete': '0',
    });
    return autoIncrementId;
  }

  Future<int> updateTodo(UpdateTodoRequest updateTodoRequest) async {
    final Database? database = await DatabaseHelper.database;
    int id = await database!.update(
        DatabaseConstants.tableName,
        {
          'task': updateTodoRequest.task,
          'complete': updateTodoRequest.isComplete ? '1' : '0',
        },
        where: '${DatabaseConstants.columnId} = ?',
        whereArgs: [updateTodoRequest.id]);
    return id;
  }

  clearTodos() async {
    final Database? database = await DatabaseHelper.database;
    database!.delete(DatabaseConstants.tableName);
  }
}
