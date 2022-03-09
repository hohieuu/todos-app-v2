import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:mockito/mockito.dart';
import 'package:todo_package/todo_package.dart';
import 'package:todo_service/todo_service.dart';

import 'package:todos_app/screens/home/widgets/todo_item.dart';
import 'package:todos_app/utils/keys.dart';

import 'app/main.dart' as app;
import 'app/main.mocks.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group('Complete todo flow test', () {
    testWidgets(
      'Add todo and get it done',
      (WidgetTester widgetTester) async {
        final todosRepository =
            TodosRepository(TodosLocalService(TodosProvider()));
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

        final todo = find.ancestor(
            of: find.text('task_6_incomplete'),
            matching: find.byType(TodoItem));

        final todoCheckBox = find.descendant(
            of: todo, matching: find.byIcon(Icons.check_box_outline_blank));
        await widgetTester.tap(todoCheckBox);
        await widgetTester.pumpAndSettle();

        final newCompleteCheckBox =
            find.descendant(of: todo, matching: find.byIcon(Icons.check_box));

        expect(todoCheckBox, findsNothing);
        expect(newCompleteCheckBox, findsNWidgets(1));
      },
    );
    testWidgets(
      'Complete todo in tab "All"',
      (WidgetTester widgetTester) async {
        final todosRepository = MockTodosRepository();
        final Todo sampleTodo =
            Todo.create(id: 1, task: 'task_1_incomplete', complete: false);
        List<Todo> allTodos = [
          sampleTodo,
          Todo.create(id: 2, task: 'task_2_incomplete', complete: false),
          Todo.create(id: 3, task: 'task_3_complete', complete: true),
          Todo.create(id: 4, task: 'task_4_complete', complete: true),
          Todo.create(id: 5, task: 'task_5_complete', complete: true),
        ];
        when(todosRepository
                .getTodos(GetTodoListTodoAction.create(TodoFilter())))
            .thenAnswer((_) async {
          return allTodos;
        });
        when(todosRepository.updateTodo(any)).thenAnswer((_) async {
          allTodos.replaceRange(
              0, 1, [sampleTodo.rebuild((p0) => p0..complete = true)]);
          // allTodos.elementAt(0).rebuild((p0) => p0..complete = true);
          return 1;
        });

        app.main([], todosRepository: todosRepository);
        await widgetTester.pumpAndSettle();

        final incompleteCheckbox = find.descendant(
            of: find.byType(TodoItem),
            matching: find.byIcon(Icons.check_box_outline_blank));

        expect(incompleteCheckbox, findsNWidgets(2));

        final completeCheckbox = find.descendant(
            of: find.byType(TodoItem), matching: find.byIcon(Icons.check_box));

        expect(completeCheckbox, findsNWidgets(3));

        final todo1 = find.ancestor(
            of: find.text('task_1_incomplete'),
            matching: find.byType(TodoItem));

        final todo1CheckBox = find.descendant(
            of: todo1, matching: find.byIcon(Icons.check_box_outline_blank));

        await widgetTester.tap(todo1CheckBox);
        await widgetTester.pumpAndSettle();

        expect(incompleteCheckbox, findsNWidgets(1));
        expect(completeCheckbox, findsNWidgets(4));

        expect(todo1CheckBox, findsNothing);
        expect(
            find.descendant(of: todo1, matching: find.byIcon(Icons.check_box)),
            findsOneWidget);
      },
    );

    testWidgets(
      'Complete todo in tab "Incomplete"',
      (WidgetTester widgetTester) async {
        final todosRepository = MockTodosRepository();
        List<Todo> incompleteTodos = [
          Todo.create(id: 1, task: 'task_1_incomplete', complete: false),
          Todo.create(id: 2, task: 'task_2_incomplete', complete: false),
        ];
        when(todosRepository.getTodos(GetTodoListTodoAction.create(
                TodoFilter.create(TodoType.incomplete))))
            .thenAnswer((_) async {
          return incompleteTodos;
        });
        when(todosRepository.updateTodo(any)).thenAnswer((_) async {
          incompleteTodos.removeAt(0);
          return 1;
        });

        app.main([], todosRepository: todosRepository);
        await widgetTester.pumpAndSettle();
        await widgetTester.tap(find.text('Incomplete'));
        await widgetTester.pumpAndSettle();

        final incompleteCheckbox = find.descendant(
            of: find.byType(TodoItem),
            matching: find.byIcon(Icons.check_box_outline_blank));
        final completeCheckbox = find.descendant(
            of: find.byType(TodoItem), matching: find.byIcon(Icons.check_box));

        expect(incompleteCheckbox, findsNWidgets(2));
        expect(completeCheckbox, findsNWidgets(0));

        final todo1 = find.ancestor(
            of: find.text('task_1_incomplete'),
            matching: find.byType(TodoItem));

        final todo1CheckBox = find.descendant(
            of: todo1, matching: find.byIcon(Icons.check_box_outline_blank));

        await widgetTester.tap(todo1CheckBox);
        await widgetTester.pumpAndSettle();

        expect(incompleteCheckbox, findsNWidgets(1));
        expect(completeCheckbox, findsNWidgets(0));

        expect(todo1, findsNothing);
      },
    );

    testWidgets(
      'Complete todo in tab "Complete"',
      (WidgetTester widgetTester) async {
        final todosRepository = MockTodosRepository();
        List<Todo> completeTodos = [
          Todo.create(id: 3, task: 'task_3_complete', complete: true),
          Todo.create(id: 4, task: 'task_4_complete', complete: true),
          Todo.create(id: 5, task: 'task_5_complete', complete: true),
        ];
        when(todosRepository.getTodos(GetTodoListTodoAction.create(
                TodoFilter.create(TodoType.complete))))
            .thenAnswer((_) async {
          return completeTodos;
        });
        when(todosRepository.updateTodo(any)).thenAnswer((_) async {
          completeTodos.removeAt(0);
          return 1;
        });

        app.main([], todosRepository: todosRepository);
        await widgetTester.pumpAndSettle();
        await widgetTester.tap(find.text('Complete'));
        await widgetTester.pumpAndSettle();

        final incompleteCheckbox = find.descendant(
            of: find.byType(TodoItem),
            matching: find.byIcon(Icons.check_box_outline_blank));
        final completeCheckbox = find.descendant(
            of: find.byType(TodoItem), matching: find.byIcon(Icons.check_box));

        expect(incompleteCheckbox, findsNWidgets(0));
        expect(completeCheckbox, findsNWidgets(3));

        final todo3 = find.ancestor(
            of: find.text('task_3_complete'), matching: find.byType(TodoItem));

        final todo3CheckBox =
            find.descendant(of: todo3, matching: find.byIcon(Icons.check_box));

        await widgetTester.tap(todo3CheckBox);
        await widgetTester.pumpAndSettle();

        expect(incompleteCheckbox, findsNWidgets(0));
        expect(completeCheckbox, findsNWidgets(2));

        expect(todo3, findsNothing);
      },
    );
  });
}
