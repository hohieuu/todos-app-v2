import 'package:todo_package/src/models/status.dart';
import 'package:todo_package/src/models/todo.dart';
import 'package:built_value/built_value.dart';

import 'package:built_collection/built_collection.dart';
import 'package:todo_package/src/models/todo_filter.dart';

part 'todo_actions.g.dart';

abstract class AbstractTodoAction {}

abstract class GetTodoListMiddlewareTodoAction
    implements
        Built<GetTodoListMiddlewareTodoAction,
            GetTodoListMiddlewareTodoActionBuilder>,
        AbstractTodoAction {
  String get statusKey;
  TodoFilter get todoFilter;

  static String createStatusKey() {
    return 'GetTodoListMiddlewareTodoAction';
  }

  factory GetTodoListMiddlewareTodoAction.create(TodoFilter todoFilter) {
    return GetTodoListMiddlewareTodoAction(
        (p0) => p0..todoFilter = todoFilter.toBuilder());
  }

  GetTodoListMiddlewareTodoAction._();

  @BuiltValueHook(initializeBuilder: true)
  static void _setDefaults(GetTodoListMiddlewareTodoActionBuilder b) =>
      b..statusKey = createStatusKey();

  factory GetTodoListMiddlewareTodoAction(
          [void Function(GetTodoListMiddlewareTodoActionBuilder) updates]) =
      _$GetTodoListMiddlewareTodoAction;
}

abstract class SetFilterReducerTodoAction
    implements
        Built<SetFilterReducerTodoAction, SetFilterReducerTodoActionBuilder>,
        AbstractTodoAction {
  String get statusKey;
  TodoFilter get todoFilter;

  SetFilterReducerTodoAction._();
  factory SetFilterReducerTodoAction(
          [void Function(SetFilterReducerTodoActionBuilder) updates]) =
      _$SetFilterReducerTodoAction;
}

abstract class SetStatusReducerTodoAction
    implements
        Built<SetStatusReducerTodoAction, SetStatusReducerTodoActionBuilder>,
        AbstractTodoAction {
  Status get status;
  String get statusKey;

  factory SetStatusReducerTodoAction.create(
      {required String statusKey, required Status status}) {
    return SetStatusReducerTodoAction(
      (updates) => updates
        ..status = status.toBuilder()
        ..statusKey = statusKey,
    );
  }

  SetStatusReducerTodoAction._();
  factory SetStatusReducerTodoAction(
          [void Function(SetStatusReducerTodoActionBuilder) updates]) =
      _$SetStatusReducerTodoAction;
}

abstract class CompleteItemMiddlewareTodoAction
    implements
        Built<CompleteItemMiddlewareTodoAction,
            CompleteItemMiddlewareTodoActionBuilder>,
        AbstractTodoAction {
  Todo get todo;
  String get statusKey;

  CompleteItemMiddlewareTodoAction._();

  factory CompleteItemMiddlewareTodoAction(
          [void Function(CompleteItemMiddlewareTodoActionBuilder) updates]) =
      _$CompleteItemMiddlewareTodoAction;

  static String createStatusKey() {
    return 'CompleteItemMiddlewareTodoAction';
  }

  factory CompleteItemMiddlewareTodoAction.create(Todo todo, bool complete) {
    return CompleteItemMiddlewareTodoAction((builder) => builder
      ..todo.replace(todo)
      ..statusKey = createStatusKey());
  }
}

abstract class SetTodoListReducerTodoAction
    implements
        Built<SetTodoListReducerTodoAction,
            SetTodoListReducerTodoActionBuilder>,
        AbstractTodoAction {
  BuiltList<Todo> get todos;

  String get statusKey;

  factory SetTodoListReducerTodoAction.create(
      {required String statusKey, required List<Todo> todos}) {
    return SetTodoListReducerTodoAction(
      (builder) => builder
        ..todos.replace(todos)
        ..statusKey = statusKey,
    );
  }

  @BuiltValueHook(initializeBuilder: true)
  static void _setDefaults(SetTodoListReducerTodoActionBuilder b) =>
      b..todos = ListBuilder();

  SetTodoListReducerTodoAction._();
  factory SetTodoListReducerTodoAction(
          [void Function(SetTodoListReducerTodoActionBuilder) updates]) =
      _$SetTodoListReducerTodoAction;
}

abstract class AddItemMiddlewareTodoAction
    implements
        Built<AddItemMiddlewareTodoAction, AddItemMiddlewareTodoActionBuilder>,
        AbstractTodoAction {
  Todo get todo;
  String get statusKey;

  static String createStatusKey() {
    return 'AddItemMiddlewareTodoAction';
  }

  factory AddItemMiddlewareTodoAction.create(Todo todo) {
    return AddItemMiddlewareTodoAction((builder) => builder
      ..todo.replace(todo)
      ..statusKey = createStatusKey());
  }
  AddItemMiddlewareTodoAction._();
  factory AddItemMiddlewareTodoAction(
          [void Function(AddItemMiddlewareTodoActionBuilder) updates]) =
      _$AddItemMiddlewareTodoAction;
}
