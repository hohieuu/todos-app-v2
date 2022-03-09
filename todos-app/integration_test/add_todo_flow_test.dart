import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:integration_test/integration_test.dart';
import 'package:mockito/mockito.dart';
import 'package:todo_package/todo_package.dart';
import 'package:todo_service/todo_service.dart';
import 'package:todos_app/di/injector.dart';
import 'package:todos_app/screens/home/widgets/todo_item.dart';
import 'package:todos_app/utils/keys.dart';

import 'app/main.dart' as app;
import 'app/main.mocks.dart';

import '../lib/main.dart' as mainApp;
import 'test_helpers.dart';

void main() {
  // IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group('Add todo flow test', () {
    testWidgets(
      'Add todo - Success',
      (WidgetTester widgetTester) async {
        mainApp.main();
        await widgetTester.pumpAndSettle();
        await addTodo(widgetTester, 'task_6_incomplete');

        final incompleteCheckbox = find.descendant(
            of: find.byType(TodoItem),
            matching: find.byIcon(Icons.check_box_outline_blank));

        final completeCheckbox = find.descendant(
            of: find.byType(TodoItem), matching: find.byIcon(Icons.check_box));
        expect(incompleteCheckbox, findsNWidgets(1));
        expect(completeCheckbox, findsNothing);
      },
    );

    testWidgets(
      'Add todo - Error',
      (WidgetTester widgetTester) async {
        //use mock repo to throw an error
        final todosRepository = MockTodosRepository();
        when(todosRepository.addTodo(any)).thenThrow('error');

        app.main([], todosRepository: todosRepository);
        await widgetTester.pumpAndSettle();

        final addTodoButton = find.byKey(Key(AppKeys.addTodoButton));

        await widgetTester.tap(addTodoButton);
        await widgetTester.pumpAndSettle();

        final textField = find.byType(TextFormField);
        await widgetTester.enterText(textField, 'task_6_incomplete');
        await widgetTester.pumpAndSettle();

        final submitTodoButton = find.byKey(Key(AppKeys.submitTodoButton));

        await widgetTester.tap(submitTodoButton);
        await widgetTester.pumpAndSettle();

        final errorMessage = find.text('Error');
        expect(errorMessage, findsOneWidget);
      },
    );
  });
}
