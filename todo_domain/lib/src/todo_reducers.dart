import 'package:redux/redux.dart';
import 'package:todo_package/src/models/status.dart';
import 'package:todo_package/src/todo_actions.dart';
import 'package:todo_package/src/todo_state.dart';

final todoReducer = combineReducers<TodoState>([
  TypedReducer<TodoState, SetTodoListReducerTodoAction>(
      _setTodoListTodoReducer),
  TypedReducer<TodoState, SetStatusReducerTodoAction>(_setStatusTodoReducer),
  TypedReducer<TodoState, SetFilterReducerTodoAction>(_setTodoFilterReducer),
]);

TodoState _setTodoListTodoReducer(
    TodoState state, SetTodoListReducerTodoAction action) {
  return state.rebuild((p0) => p0
    ..todos.replace(action.todos)
    ..statuses[action.statusKey] = Status.success());
}

TodoState _setStatusTodoReducer(
    TodoState state, SetStatusReducerTodoAction action) {
  return state.rebuild((p0) => p0..statuses[action.statusKey] = action.status);
}

TodoState _setTodoFilterReducer(
    TodoState state, SetFilterReducerTodoAction action) {
  return state.rebuild((p0) => p0..todoFilter = action.todoFilter.toBuilder());
}
