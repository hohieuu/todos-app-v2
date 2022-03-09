import 'package:redux_epics/redux_epics.dart';
import 'package:todo_package/src/models/status.dart';
import 'package:todo_package/src/models/todo.dart';
import 'package:todo_package/src/repository/todos_repository.dart';
import 'package:todo_package/src/todo_actions.dart';
import 'package:todo_package/src/todo_state.dart';

class TodoMiddleware extends EpicClass<AbstractTodoFeature> {
  final TodosRepository todosRepository;
  TodoMiddleware(this.todosRepository);
  @override
  Stream call(Stream<dynamic> actions, EpicStore<AbstractTodoFeature> store) {
    return combineEpics<AbstractTodoFeature>(
        [_addTodoEpic, _getTodoListEpic, _completeTodoEpic])(actions, store);
  }

  Stream<dynamic> _addTodoEpic(
      Stream<dynamic> actions, EpicStore<AbstractTodoFeature> store) async* {
    await for (dynamic action in actions) {
      if (action is AddItemTodoAction) {
        yield SetStatusTodoAction.create(
            statusKey: action.statusKey, status: Status.loading());
        try {
          int? id = await todosRepository.addTodo(action.todo);
          yield SetStatusTodoAction.create(
              statusKey: action.statusKey,
              status: id != null ? Status.success() : Status.error());
          if (id != null) {
            yield GetTodoListTodoAction.create(
                store.state.todoState.todoFilter);
          }
        } catch (error) {
          yield SetStatusTodoAction.create(
              statusKey: action.statusKey, status: Status.error());
        }
      }
    }
  }

  Stream<dynamic> _completeTodoEpic(
      Stream<dynamic> actions, EpicStore<AbstractTodoFeature> store) async* {
    await for (dynamic action in actions) {
      if (action is CompleteItemTodoAction) {
        try {
          await todosRepository.updateTodo(action.todo.rebuild(
              (builder) => builder..complete = !(action.todo.complete)));
        } catch (_) {
          // Do not handle with error status, just reload the list
        } finally {
          yield GetTodoListTodoAction.create(store.state.todoState.todoFilter);
        }
      }
    }
  }

  Stream<dynamic> _getTodoListEpic(
    Stream<dynamic> actions,
    EpicStore<AbstractTodoFeature> store,
  ) async* {
    await for (dynamic action in actions) {
      if (action is GetTodoListTodoAction) {
        yield SetFilterTodoAction((values) => values
          ..statusKey = action.statusKey
          ..todoFilter = action.todoFilter.toBuilder());

        yield SetStatusTodoAction.create(
            statusKey: action.statusKey, status: Status.loading());
        try {
          final List<Todo> newTodos = await todosRepository.getTodos(action);
          yield SetTodoListTodoAction.create(
              statusKey: action.statusKey, todos: newTodos);
        } catch (_) {
          yield SetStatusTodoAction.create(
              statusKey: action.statusKey, status: Status.error());
        }
      }
    }
  }
}
