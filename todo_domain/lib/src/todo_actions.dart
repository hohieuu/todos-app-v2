import 'package:todo_package/src/models/status.dart';
import 'package:todo_package/src/models/todo.dart';
import 'package:built_value/built_value.dart';

import 'package:built_collection/built_collection.dart';
import 'package:todo_package/src/models/todo_filter.dart';

part 'todo_actions.g.dart';

abstract class AbstractTodoAction {}

abstract class GetTodoListTodoAction
    implements
        Built<GetTodoListTodoAction, GetTodoListTodoActionBuilder>,
        AbstractTodoAction {
  String get statusKey;
  TodoFilter get todoFilter;

  static String createStatusKey() {
    return 'GetTodoListTodoAction';
  }

  factory GetTodoListTodoAction.create(TodoFilter todoFilter) {
    return GetTodoListTodoAction(
        (p0) => p0..todoFilter = todoFilter.toBuilder());
  }

  GetTodoListTodoAction._();

  @BuiltValueHook(initializeBuilder: true)
  static void _setDefaults(GetTodoListTodoActionBuilder b) =>
      b..statusKey = createStatusKey();

  factory GetTodoListTodoAction(
          [void Function(GetTodoListTodoActionBuilder) updates]) =
      _$GetTodoListTodoAction;
}

abstract class SetFilterTodoAction
    implements
        Built<SetFilterTodoAction, SetFilterTodoActionBuilder>,
        AbstractTodoAction {
  String get statusKey;
  TodoFilter get todoFilter;

  SetFilterTodoAction._();
  factory SetFilterTodoAction(
          [void Function(SetFilterTodoActionBuilder) updates]) =
      _$SetFilterTodoAction;
}

abstract class SetStatusTodoAction
    implements
        Built<SetStatusTodoAction, SetStatusTodoActionBuilder>,
        AbstractTodoAction {
  Status get status;
  String get statusKey;

  factory SetStatusTodoAction.create(
      {required String statusKey, required Status status}) {
    return SetStatusTodoAction(
      (updates) => updates
        ..status = status.toBuilder()
        ..statusKey = statusKey,
    );
  }

  SetStatusTodoAction._();
  factory SetStatusTodoAction(
          [void Function(SetStatusTodoActionBuilder) updates]) =
      _$SetStatusTodoAction;
}

abstract class CompleteItemTodoAction
    implements
        Built<CompleteItemTodoAction, CompleteItemTodoActionBuilder>,
        AbstractTodoAction {
  Todo get todo;
  String get statusKey;

  CompleteItemTodoAction._();

  factory CompleteItemTodoAction(
          [void Function(CompleteItemTodoActionBuilder) updates]) =
      _$CompleteItemTodoAction;

  static String createStatusKey() {
    return 'CompleteItemTodoAction';
  }

  factory CompleteItemTodoAction.create(Todo todo, bool complete) {
    return CompleteItemTodoAction((builder) => builder
      ..todo.replace(todo)
      ..statusKey = createStatusKey());
  }
}

abstract class SetTodoListTodoAction
    implements
        Built<SetTodoListTodoAction, SetTodoListTodoActionBuilder>,
        AbstractTodoAction {
  BuiltList<Todo> get todos;

  String get statusKey;

  factory SetTodoListTodoAction.create(
      {required String statusKey, required List<Todo> todos}) {
    return SetTodoListTodoAction(
      (builder) => builder
        ..todos.replace(todos)
        ..statusKey = statusKey,
    );
  }

  @BuiltValueHook(initializeBuilder: true)
  static void _setDefaults(SetTodoListTodoActionBuilder b) =>
      b..todos = ListBuilder();

  SetTodoListTodoAction._();
  factory SetTodoListTodoAction(
          [void Function(SetTodoListTodoActionBuilder) updates]) =
      _$SetTodoListTodoAction;
}

abstract class AddItemTodoAction
    implements
        Built<AddItemTodoAction, AddItemTodoActionBuilder>,
        AbstractTodoAction {
  Todo get todo;
  String get statusKey;

  static String createStatusKey() {
    return 'AddItemTodoAction';
  }

  factory AddItemTodoAction.create(Todo todo) {
    return AddItemTodoAction((builder) => builder
      ..todo.replace(todo)
      ..statusKey = createStatusKey());
  }
  AddItemTodoAction._();
  factory AddItemTodoAction([void Function(AddItemTodoActionBuilder) updates]) =
      _$AddItemTodoAction;
}
