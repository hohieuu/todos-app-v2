import 'package:todo_package/src/models/todo.dart';
import 'package:todo_package/src/repository/abstract_todos_repository.dart';
import 'package:todo_package/src/todo_actions.dart';

class TodosRepository implements AbstractTodosRepository {
  final AbstractTodosRepository localRepo;

  TodosRepository(this.localRepo);

  @override
  addTodo(Todo todo) {
    return localRepo.addTodo(todo);
  }

  @override
  updateTodo(Todo todo) {
    return localRepo.updateTodo(todo);
  }

  @override
  getTodos(GetTodoListMiddlewareTodoAction loadTodosAction) {
    return localRepo.getTodos(loadTodosAction);
  }
}
