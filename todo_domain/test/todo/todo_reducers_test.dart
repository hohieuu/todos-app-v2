import 'package:flutter_test/flutter_test.dart';
import 'package:todo_package/todo_package.dart';

import 'todo_helpers.dart';

void main() {
  group('Todo reducers test', () {
    //given
    const statusKey = 'statusKey';

    test('Update todos', () {
      final initialState = TodoState();

      final action = SetTodoListReducerTodoAction((p0) => p0
        ..statusKey = statusKey
        ..todos.addAll(getAllTodos));

      final nextState = todoReducer(initialState, action);

      expect(
          nextState,
          TodoState((p0) => p0
            ..statuses[statusKey] = Status.success()
            ..todos.addAll(getAllTodos)));
    });
    test('Set todos status', () {
      final initialState = TodoState();

      final action = SetStatusReducerTodoAction((p0) => p0
        ..statusKey = statusKey
        ..status = Status.loading().toBuilder());

      final nextState = todoReducer(initialState, action);

      expect(nextState,
          TodoState((p0) => p0..statuses[statusKey] = Status.loading()));
    });

    test('Set add todo status', () {
      final initialState = TodoState();

      final action = SetStatusReducerTodoAction((p0) => p0
        ..statusKey = statusKey
        ..status = Status.error().toBuilder());

      final nextState = todoReducer(initialState, action);

      expect(nextState,
          TodoState((p0) => p0..statuses[statusKey] = Status.error()));
    });
  });
}
