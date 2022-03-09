import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:mockito/mockito.dart';
import 'package:todo_package/todo_package.dart';

import 'package:todos_app/screens/home/widgets/todo_item.dart';
import 'package:todos_app/screens/home/widgets/todos_view.dart';
import 'package:todos_app/utils/keys.dart';

import 'app/main.dart' as app;
import '../lib/main.dart' as mainApp;
import 'app/main.mocks.dart';
import 'test_helpers.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group('Change tab flow test', () {
    testWidgets(
      'Change tab in normal case',
      (WidgetTester widgetTester) async {
        mainApp.main();
        await widgetTester.pumpAndSettle();

        for (var task in [
          'task_1_incomplete',
          'task_2_incomplete',
          'task_3_complete',
          'task_4_complete',
          'task_5_complete'
        ]) {
          await addTodo(widgetTester, task);
        }
        await completeTodo(widgetTester, 'task_3_complete');
        await completeTodo(widgetTester, 'task_4_complete');
        await completeTodo(widgetTester, 'task_5_complete');

        final bottomNavBar = find.byType(BottomNavigationBar);
        final todoList = find.byType(TodosView);
        final incompleteBottomNavItem = find.text('Incomplete');
        final completeBottomNavItem = find.text('Complete');

        Finder todoItems = find.byType(TodoItem);
        expect(bottomNavBar, findsOneWidget);
        expect(todoList, findsOneWidget);
        expect(incompleteBottomNavItem, findsOneWidget);
        expect(completeBottomNavItem, findsOneWidget);

        //In default tab (tab "All"), the list has 5 todo items
        expect(todoItems, findsNWidgets(5));

        //In tab "Incomplete", the list has 2 todo items
        await widgetTester.tap(incompleteBottomNavItem);
        await widgetTester.pumpAndSettle();
        expect(todoItems, findsNWidgets(2));

        //In tab "Complete", the list has 3 todo items
        await widgetTester.tap(completeBottomNavItem);
        await widgetTester.pumpAndSettle();
        expect(todoItems, findsNWidgets(3));
      },
    );

    testWidgets(
      'Change tab with empty data',
      (WidgetTester widgetTester) async {
        final todosRepository = MockTodosRepository();
        //Mock data
        when(todosRepository.getTodos(any)).thenAnswer((_) async {
          return [];
        });

        app.main([], todosRepository: todosRepository);
        await widgetTester.pumpAndSettle();

        final bottomNavBar = find.byType(BottomNavigationBar);
        final todoList = find.byType(TodosView);
        final completeBottomNavItem = find.text('Complete');

        Finder todoItems = find.byType(TodoItem);
        expect(bottomNavBar, findsOneWidget);
        expect(todoList, findsOneWidget);
        expect(completeBottomNavItem, findsOneWidget);

        //In tab "Complete", the todos view is empty
        await widgetTester.tap(completeBottomNavItem);
        await widgetTester.pumpAndSettle();
        expect(todoItems, findsNothing);
      },
    );

    testWidgets(
      'Change tab with error data',
      (WidgetTester widgetTester) async {
        final todosRepository = MockTodosRepository();
        //Mock data
        when(todosRepository
                .getTodos(GetTodoListTodoAction.create(TodoFilter())))
            .thenAnswer((_) async {
          return [];
        });

        when(todosRepository.getTodos(GetTodoListTodoAction.create(TodoFilter(
                (updates) => updates..todoType = TodoType.complete))))
            .thenThrow('error');

        app.main([], todosRepository: todosRepository);
        await widgetTester.pumpAndSettle();

        final bottomNavBar = find.byType(BottomNavigationBar);
        final todoList = find.byType(TodosView);
        final completeBottomNavItem = find.text('Incomplete');

        Finder todoItems = find.byType(TodoItem);
        expect(bottomNavBar, findsOneWidget);
        expect(todoList, findsOneWidget);
        //In default tab (tab "All"), the todos view is empty
        expect(todoItems, findsNothing);

        //In tab "Complete", the todos view is empty
        await widgetTester.tap(completeBottomNavItem);
        await widgetTester.pumpAndSettle();
        final errorWidget = find.text('Error');
        expect(errorWidget, findsOneWidget);
      },
    );
  });
}
