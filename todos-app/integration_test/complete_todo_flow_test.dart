import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:todos_app/main.dart' as mainApp;
import 'package:todos_app/models/bottom_navigation_state.dart';

import 'package:todos_app/screens/home/widgets/todo_item.dart';

import 'test_helpers.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group('Complete todo flow test', () {
    testWidgets(
      'Add todo and get it done',
      (WidgetTester widgetTester) async {
        mainApp.main();
        await widgetTester.pumpAndSettle();
        const taskName = 'task_6_incomplete';
        await addTodo(widgetTester, taskName);
        await completeTodo(widgetTester, taskName);
      },
    );
    testWidgets(
      'Complete todo in tab "All"',
      (WidgetTester widgetTester) async {
        mainApp.main();
        await widgetTester.pumpAndSettle();

        const tasks = [
          'task_1_complete',
          'task_2_complete',
          'task_3_complete',
          'task_4_complete',
          'task_5_complete'
        ];
        for (var task in tasks) {
          await addTodo(widgetTester, task);
        }
        for (var task in tasks) {
          await completeTodo(widgetTester, task);
        }
        await widgetTester.pumpAndSettle();

        final incompleteCheckbox = find.descendant(
            of: find.byType(TodoItem),
            matching: find.byIcon(Icons.check_box_outline_blank));

        expect(incompleteCheckbox, findsNWidgets(0));

        final completeCheckbox = find.descendant(
            of: find.byType(TodoItem), matching: find.byIcon(Icons.check_box));

        expect(completeCheckbox, findsNWidgets(5));
      },
    );

    testWidgets(
      'Complete todo in tab "Incomplete"',
      (WidgetTester widgetTester) async {
        mainApp.main();
        await widgetTester.pumpAndSettle();
        const tasks = [
          'task_1_complete',
          'task_2_complete',
          'task_3_complete',
          'task_4_complete',
          'task_5_complete'
        ];
        for (var task in tasks) {
          await addTodo(widgetTester, task);
        }
        await changeTab(widgetTester, BottomNavigationState.incomplete);
        for (var task in tasks) {
          await completeTodo(widgetTester, task);
        }
        expect(find.byType(TodoItem), findsNothing);
      },
    );

    testWidgets(
      'Complete todo in tab "Complete"',
      (WidgetTester widgetTester) async {
        mainApp.main();
        await widgetTester.pumpAndSettle();
        const tasks = [
          'task_1_incomplete',
          'task_2_incomplete',
          'task_3_incomplete',
          'task_4_incomplete',
          'task_5_incomplete'
        ];
        for (var task in tasks) {
          await addTodo(widgetTester, task);
          await completeTodo(widgetTester, task);
        }
        await changeTab(widgetTester, BottomNavigationState.complete);
        for (var task in tasks) {
          await completeTodo(widgetTester, task, uncomplete: true);
        }
        expect(find.byType(TodoItem), findsNothing);
      },
    );
  });
}
