import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:todo_package/todo_package.dart';
import 'package:todos_app/models/app_state.dart';
import 'package:todos_app/screens/home/widgets/todo_item.dart';

class TodosView extends StatelessWidget {
  const TodosView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, TodoState>(
        converter: (store) => store.state.todoState,
        builder: (BuildContext context, TodoState state) {
          final LoadingStatus loadingStatus = (state.statuses[
                      GetTodoListMiddlewareTodoAction.createStatusKey()] ??
                  Status.idle())
              .loading;
          switch (loadingStatus) {
            case LoadingStatus.loading:
              return const Center(
                child: CircularProgressIndicator(),
              );

            case LoadingStatus.error:
              return const Center(
                child: Text('Error'),
              );

            case LoadingStatus.idle:
              return const SizedBox.shrink();

            default:
          }

          if (state.todos.isEmpty) {
            return const Center(
              child: Text('Empty'),
            );
          }

          return ListView(
            children: state.todos.map((e) => TodoItem(todo: e)).toList(),
          );
        });
  }
}
