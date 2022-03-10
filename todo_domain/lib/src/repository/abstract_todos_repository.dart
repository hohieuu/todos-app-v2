import 'package:todo_package/src/models/todo.dart';
import 'package:todo_package/src/todo_actions.dart';

abstract class AbstractTodosRepository {
  getTodos(GetTodoListMiddlewareTodoAction loadTodosAction) {}

  addTodo(Todo todo);

  updateTodo(Todo todo);
}
