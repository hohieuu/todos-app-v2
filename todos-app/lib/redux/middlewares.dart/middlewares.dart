import 'package:flutter/foundation.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:todo_package/todo_package.dart';
import 'package:todos_app/models/app_state.dart';
import 'package:todos_app/redux/middlewares.dart/ui_middleware.dart';

List<Middleware<AppState>> createMiddleware(TodosRepository todosRepository) {
  return [
    EpicMiddleware<AppState>(UIMiddleware()),
    EpicMiddleware<AbstractTodoFeature>(TodoMiddleware(todosRepository)),
    TypedMiddleware<AppState, dynamic>(_loggingMiddleware)
  ];
}

void _loggingMiddleware(
    Store<AppState> store, action, NextDispatcher next) async {
  if (kDebugMode) {
    // print(action.toString());
  }
  next(action);
}
