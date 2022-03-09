import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'todo_filter.g.dart';

enum TodoType { all, incomplete, complete }

abstract class TodoFilter implements Built<TodoFilter, TodoFilterBuilder> {
  TodoType get todoType;
  TodoFilter._();

  factory TodoFilter.create(TodoType todoType) {
    return TodoFilter((values) => values.todoType = todoType);
  }
  @BuiltValueHook(initializeBuilder: true)
  static void _setDefaults(TodoFilterBuilder b) => b..todoType = TodoType.all;

  factory TodoFilter([void Function(TodoFilterBuilder) updates]) = _$TodoFilter;
}
