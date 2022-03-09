import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:todo_package/todo_package.dart';
import 'package:todos_app/models/app_state.dart';
import 'package:todos_app/utils/keys.dart';

class AddTodoPage extends StatelessWidget {
  const AddTodoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _taskInputController = TextEditingController();
    return StoreConnector<AppState, Status>(
      onInit: ((store) => store.dispatch(SetStatusTodoAction.create(
          statusKey: AddItemTodoAction.createStatusKey(),
          status: Status.idle()))),
      converter: (store) => (store
              .state.todoState.statuses[AddItemTodoAction.createStatusKey()] ??
          Status.idle()),
      builder: (context, addTodoStatus) {
        return Scaffold(
            appBar: AppBar(
              title: const Text('Add todo'),
            ),
            body: Container(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Add task'),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(controller: _taskInputController)
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              key: Key(AppKeys.submitTodoButton),
              onPressed: addTodoStatus.loading == LoadingStatus.loading
                  ? null
                  : () {
                      if (_taskInputController.text.isNotEmpty) {
                        StoreProvider.of<AppState>(context).dispatch(
                            AddItemTodoAction.create(
                                Todo.create(task: _taskInputController.text)));
                      }
                    },
              child: addTodoStatus.loading == LoadingStatus.loading
                  ? const CircularProgressIndicator(
                      color: Colors.white,
                    )
                  : const Icon(Icons.check),
            ));
      },
      onWillChange: (prvAddTodoStatus, currentAddTodoStatus) {
        switch (currentAddTodoStatus.loading) {
          case LoadingStatus.success:
            ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text('Added')));
            StoreProvider.of<AppState>(context).dispatch(
                SetStatusTodoAction.create(
                    statusKey: AddItemTodoAction.createStatusKey(),
                    status: Status.idle()));
            Navigator.pop(context, true);
            break;
          case LoadingStatus.error:
            ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text('Error')));
            break;

          default:
        }
      },
    );
  }
}
