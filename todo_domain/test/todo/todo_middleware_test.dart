import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:todo_package/src/todo_state.dart';
import 'package:todo_package/todo_package.dart';

import 'todo_helpers.dart';
import 'todo_middleware_test.mocks.dart';

// class AppStoreMock extends Mock implements Store<AppState> {}

@GenerateMocks([TodosRepository, AbstractTodoFeature])
void main() {
  group('Todo middleware test', () {
    //given
    MockTodosRepository todosRepository = MockTodosRepository();
    AbstractTodoFeature todoDomain = MockAbstractTodoFeature();
    TodoMiddleware todoMiddleware = TodoMiddleware(todosRepository);

    final todoEpicStore = EpicStore(Store<AbstractTodoFeature>(
      combineReducers<AbstractTodoFeature>([]),
      initialState: todoDomain,
    ));
    const statusKey = 'statusKey';
    final allTodos = getAllTodos;

    test('Load todos success', () async {
      //given
      final getTodosAction =
          GetTodoListTodoAction((p0) => p0..statusKey = statusKey);
      when(todosRepository.getTodos(getTodosAction)).thenAnswer((_) async {
        return allTodos;
      });
      when(todoDomain.todoState).thenReturn(TodoState());

      //when
      final emittedActions = await todoMiddleware
          .call(
            Stream.fromIterable([getTodosAction]).asBroadcastStream(),
            todoEpicStore,
          )
          .toList();

      //then
      expect(
        emittedActions,
        [
          SetFilterTodoAction((p0) => p0..statusKey = statusKey),
          SetStatusTodoAction((p0) => p0
            ..statusKey = statusKey
            ..status = Status.loading().toBuilder()),
          SetTodoListTodoAction.create(statusKey: statusKey, todos: allTodos)
        ],
      );
    });

    test('Load todos failure', () async {
      //given
      final getTodosAction =
          GetTodoListTodoAction((p0) => p0..statusKey = statusKey);
      when(todosRepository.getTodos(getTodosAction)).thenThrow('error');
      when(todoDomain.todoState).thenReturn(TodoState());

      //when
      final emittedActions = await todoMiddleware
          .call(
            Stream.fromIterable([getTodosAction]).asBroadcastStream(),
            todoEpicStore,
          )
          .toList();

      //then
      expect(
        emittedActions,
        [
          SetFilterTodoAction((p0) => p0..statusKey = statusKey),
          SetStatusTodoAction((p0) => p0
            ..statusKey = statusKey
            ..status = Status.loading().toBuilder()),
          SetStatusTodoAction(
            (p0) => p0
              ..statusKey = statusKey
              ..status = Status.error().toBuilder(),
          )
        ],
      );
    });

    test('Add todo success', () async {
      //given
      final Todo newTodo = Todo.create(task: 'new task');
      final addTodoAction = AddItemTodoAction((p0) => p0
        ..statusKey = statusKey
        ..todo = newTodo.toBuilder());
      when(todosRepository.addTodo(any)).thenAnswer((_) async {
        //autoincrement Id
        return 1;
      });
      when(todoDomain.todoState).thenReturn(TodoState());

      //when
      final emittedActions = await todoMiddleware
          .call(
            Stream.fromIterable([addTodoAction]).asBroadcastStream(),
            todoEpicStore,
          )
          .toList();

      //then
      expect(
        emittedActions,
        [
          SetStatusTodoAction((p0) => p0
            ..statusKey = statusKey
            ..status = Status.loading().toBuilder()),
          SetStatusTodoAction(
            (p0) => p0
              ..statusKey = statusKey
              ..status = Status.success().toBuilder(),
          ),
          GetTodoListTodoAction((p0) =>
              p0..todoFilter = todoDomain.todoState.todoFilter.toBuilder())
        ],
      );
    });

    test('Add todo failure', () async {
      //given
      final Todo newTodo = Todo.create(task: 'new task');
      final addTodoAction = AddItemTodoAction((p0) => p0
        ..statusKey = statusKey
        ..todo = newTodo.toBuilder());
      when(todosRepository.addTodo(any)).thenThrow('error');
      when(todoDomain.todoState).thenReturn(TodoState());

      //when
      final emittedActions = await todoMiddleware
          .call(
            Stream.fromIterable([addTodoAction]).asBroadcastStream(),
            todoEpicStore,
          )
          .toList();

      //then
      expect(
        emittedActions,
        [
          SetStatusTodoAction((p0) => p0
            ..statusKey = statusKey
            ..status = Status.loading().toBuilder()),
          SetStatusTodoAction(
            (p0) => p0
              ..statusKey = statusKey
              ..status = Status.error().toBuilder(),
          )
        ],
      );
    });

    test('Complete todo success', () async {
      //given
      final completeTodoActions = CompleteItemTodoAction((p0) => p0
        ..statusKey = statusKey
        ..todo.replace(getIncompleteTodos[0]));
      when(todosRepository.updateTodo(any)).thenAnswer((_) async {
        return 1;
      });
      when(todoDomain.todoState).thenReturn(TodoState());

      //when
      final emittedActions = await todoMiddleware
          .call(
            Stream.fromIterable([completeTodoActions]).asBroadcastStream(),
            todoEpicStore,
          )
          .toList();

      //then
      expect(
        emittedActions,
        [GetTodoListTodoAction.create(todoDomain.todoState.todoFilter)],
      );
    });

    test('Complete todo failure', () async {
      //given
      final completeTodoActions = CompleteItemTodoAction((p0) => p0
        ..statusKey = statusKey
        ..todo.replace(getIncompleteTodos[0]));
      when(todosRepository.updateTodo(any)).thenThrow('error');
      when(todoDomain.todoState).thenReturn(TodoState());

      //when
      final emittedActions = await todoMiddleware
          .call(
            Stream.fromIterable([completeTodoActions]).asBroadcastStream(),
            todoEpicStore,
          )
          .toList();

      //then
      expect(
        emittedActions,
        [GetTodoListTodoAction.create(todoDomain.todoState.todoFilter)],
      );
    });
  });
}
