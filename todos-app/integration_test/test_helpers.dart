import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todo_package/todo_package.dart';
import 'package:todos_app/screens/home/widgets/todo_item.dart';
import 'package:todos_app/utils/keys.dart';

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

addTodo(WidgetTester widgetTester, String task) async {
  final addTodoButton = find.byKey(Key(AppKeys.addTodoButton));

  await widgetTester.tap(addTodoButton);
  await widgetTester.pumpAndSettle();

  final textField = find.byType(TextFormField);
  await widgetTester.enterText(textField, task);
  await widgetTester.pumpAndSettle();

  final submitTodoButton = find.byKey(Key(AppKeys.submitTodoButton));
  await widgetTester.tap(submitTodoButton);
  await widgetTester.pumpAndSettle();

  final successMessage = find.text('Added');
  final newTodoResult = find.text(task);
  expect(successMessage, findsOneWidget);
  expect(newTodoResult, findsOneWidget);
}

completeTodo(WidgetTester widgetTester, String taskName) async {
  final todo =
      find.ancestor(of: find.text(taskName), matching: find.byType(TodoItem));

  final todoCheckBox = find.descendant(
      of: todo, matching: find.byIcon(Icons.check_box_outline_blank));
  await widgetTester.tap(todoCheckBox);
  await widgetTester.pumpAndSettle();

  expect(todoCheckBox, findsNothing);
}
