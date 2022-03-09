import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:todo_package/src/models/status.dart';
import 'package:todo_package/src/models/todo.dart';
import 'package:todo_package/src/models/todo_filter.dart';

part 'todo_state.g.dart';

abstract class AbstractTodoFeature {
  final TodoState todoState;

  AbstractTodoFeature({required this.todoState});
}

abstract class TodoState implements Built<TodoState, TodoStateBuilder> {
  BuiltList<Todo> get todos;
  TodoFilter get todoFilter;
  BuiltMap<String, Status> get statuses;

  @BuiltValueHook(initializeBuilder: true)
  static void _setDefaults(TodoStateBuilder b) => b
    ..todos = ListBuilder()
    ..statuses = MapBuilder<String, Status>();

  TodoState._();
  factory TodoState([void Function(TodoStateBuilder) updates]) = _$TodoState;
}
