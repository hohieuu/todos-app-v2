import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:todo_package/todo_package.dart';
import 'package:todos_app/models/app_state.dart';
import 'package:todos_app/screens/edit_todo/edit_todo_page.dart';

class TodoItem extends StatelessWidget {
  final Todo todo;
  const TodoItem({Key? key, required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final bool? added = await Navigator.push(context,
            MaterialPageRoute(builder: (context) => const EditTodoPage()));
        if (added != null && added) {}
      },
      child: Container(
        width: double.infinity,
        height: 60,
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey.shade200),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
                onTap: () {
                  StoreProvider.of<AppState>(context)
                      .dispatch(CompleteItemMiddlewareTodoAction.create(
                    todo,
                    todo.complete,
                  ));
                },
                child: Icon(todo.complete
                    ? Icons.check_box
                    : Icons.check_box_outline_blank)),
            const SizedBox(
              width: 15,
            ),
            Expanded(
                child: Text(
              todo.task,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ))
          ],
        ),
      ),
    );
  }
}
