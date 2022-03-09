import 'package:todo_package/todo_package.dart';

List<Todo> get getIncompleteTodos => [
      Todo.create(id: 1, task: 'task_1_incomplete', complete: false),
      Todo.create(id: 2, task: 'task_2_incomplete', complete: false),
    ];
List<Todo> get getCompleteTodos => [
      Todo.create(id: 3, task: 'task_3_complete', complete: true),
      Todo.create(id: 4, task: 'task_4_complete', complete: true),
      Todo.create(id: 5, task: 'task_5_complete', complete: true),
    ];
List<Todo> get getAllTodos => [...getCompleteTodos, ...getIncompleteTodos];
