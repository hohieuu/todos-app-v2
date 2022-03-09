import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todos_app/models/bottom_navigation_state.dart';
import 'package:todos_app/screens/home/widgets/todo_item.dart';
import 'package:todos_app/utils/keys.dart';

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

completeTodo(WidgetTester widgetTester, String taskName,
    {bool uncomplete = false}) async {
  final todo =
      find.ancestor(of: find.text(taskName), matching: find.byType(TodoItem));

  final todoCheckBox = find.descendant(
      of: todo,
      matching: find.byIcon(
          uncomplete ? Icons.check_box : Icons.check_box_outline_blank));
  await widgetTester.tap(todoCheckBox);
  await widgetTester.pumpAndSettle();

  expect(todoCheckBox, findsNothing);
}

changeTab(WidgetTester widgetTester,
    BottomNavigationState bottomNavigationState) async {
  switch (bottomNavigationState) {
    case BottomNavigationState.all:
      final bottomBarItem = find.text('All');
      await widgetTester.tap(bottomBarItem);
      break;
    case BottomNavigationState.complete:
      final bottomBarItem = find.text('Complete');
      await widgetTester.tap(bottomBarItem);
      break;
    case BottomNavigationState.incomplete:
      final bottomBarItem = find.text('Incomplete');
      await widgetTester.tap(bottomBarItem);
      break;
    default:
  }
  await widgetTester.pumpAndSettle();
}
