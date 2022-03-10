import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:mockito/mockito.dart';
import 'package:todo_package/todo_package.dart';
import 'package:todos_app/models/bottom_navigation_state.dart';

import 'package:todos_app/screens/home/widgets/todo_item.dart';
import 'package:todos_app/screens/home/widgets/todos_view.dart';
import 'package:todos_app/main.dart' as mainApp;

import 'app/main.dart' as app;
import 'app/main.mocks.dart';
import 'test_helpers.dart';

void main() {
  // IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group('Change tab flow test', () {
    testWidgets(
      'Change tab with empty data',
      (WidgetTester widgetTester) async {
        mainApp.main();
        await widgetTester.pumpAndSettle();

        await changeTab(widgetTester, BottomNavigationState.complete);
        //In tab "Complete", the todos view is empty
        final todoItems = find.byType(TodoItem);
        expect(todoItems, findsNothing);
        expect(find.text('Empty'), findsOneWidget);
      },
    );
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
        for (var task in [
          'task_3_complete',
          'task_4_complete',
          'task_5_complete'
        ]) {
          await completeTodo(widgetTester, task);
        }

        final bottomNavBar = find.byType(BottomNavigationBar);
        final todoList = find.byType(TodosView);

        Finder todoItems = find.byType(TodoItem);
        expect(bottomNavBar, findsOneWidget);
        expect(todoList, findsOneWidget);

        //In default tab (tab "All"), the list has 5 todo items
        expect(todoItems, findsNWidgets(5));

        //In tab "Incomplete", the list has 2 todo items
        await changeTab(widgetTester, BottomNavigationState.incomplete);
        expect(todoItems, findsNWidgets(2));

        //In tab "Complete", the list has 3 todo items
        await changeTab(widgetTester, BottomNavigationState.complete);
        expect(todoItems, findsNWidgets(3));
      },
    );

    testWidgets(
      'Change tab with error data',
      (WidgetTester widgetTester) async {
        IntegrationTestWidgetsFlutterBinding.ensureInitialized();

        final todosRepository = MockTodosRepository();
        //Mock data
        when(todosRepository
                .getTodos(GetTodoListMiddlewareTodoAction.create(TodoFilter())))
            .thenAnswer((_) async {
          return [];
        });

        when(todosRepository.getTodos(GetTodoListMiddlewareTodoAction.create(
                TodoFilter(
                    (updates) => updates..todoType = TodoType.complete))))
            .thenThrow('error');

        app.main([], todosRepository: todosRepository);
        await widgetTester.pumpAndSettle();

        final todoList = find.byType(TodosView);
        Finder todoItems = find.byType(TodoItem);
        expect(todoList, findsOneWidget);
        //In default tab (tab "All"), the todos view is empty
        expect(todoItems, findsNothing);

        //In tab "Complete", the todos view is empty
        await changeTab(widgetTester, BottomNavigationState.complete);
        final errorWidget = find.text('Error');
        expect(errorWidget, findsOneWidget);
      },
    );
  });
}
