import 'package:built_value/built_value.dart';

part 'todo.g.dart';

abstract class Todo implements Built<Todo, TodoBuilder> {
  int? get id;
  String get task;
  bool get complete;

  Todo._();

  Map<String, Object?> toMap() {
    return {
      'task': task,
      'complete': complete ? '1' : '0',
    };
  }

  factory Todo.create({int? id, required String task, bool? complete = false}) {
    return Todo((builder) => builder
      ..id = id
      ..task = task
      ..complete = complete);
  }

  factory Todo.fromMap(Map<dynamic, dynamic> map) {
    return Todo((builder) => builder
      ..id = map['id']
      ..task = map['task']
      ..complete = map['complete'] == 1);
  }
  factory Todo([void Function(TodoBuilder) updates]) = _$Todo;
}
