import 'package:todo_package/src/models/todo.dart';
import 'package:todo_package/src/models/todo_filter.dart';
import 'package:todo_package/src/todo_actions.dart';
import 'package:todo_service/todo_service.dart';

import 'abstract_todos_repository.dart';

class TodosLocalService implements AbstractTodosRepository {
  final TodosProvider todosProvider;

  TodosLocalService(this.todosProvider);

  @override
  addTodo(Todo todo) async {
    final AddTodoRequest addTodoRequest = AddTodoRequest(todo.task);
    return await todosProvider.insertTodo(addTodoRequest);
  }

  @override
  getTodos(GetTodoListTodoAction getTodoListTodoAction) async {
    switch (getTodoListTodoAction.todoFilter.todoType) {
      case TodoType.all:
        final response = await todosProvider.getAllTodos();
        return response.map((e) => Todo.fromMap(e)).toList();
      case TodoType.incomplete:
        final response = await todosProvider.getIncompleteTodos();
        return response.map((e) => Todo.fromMap(e)).toList();

      case TodoType.complete:
        final response = await todosProvider.getCompleteTodos();
        return response.map((e) => Todo.fromMap(e)).toList();
      default:
    }
    throw ('Todo filter is invalid');
  }

  @override
  updateTodo(Todo todo) async {
    final UpdateTodoRequest updateTodoRequest =
        UpdateTodoRequest(todo.id ?? -1, todo.task, todo.complete);
    return await todosProvider.updateTodo(updateTodoRequest);
  }
}
