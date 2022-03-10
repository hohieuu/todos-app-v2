import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:todo_package/todo_package.dart';
import 'package:todos_app/models/app_state.dart';
import 'package:todos_app/models/bottom_navigation_state.dart';
import 'package:todos_app/redux/actions/actions.dart';
import 'package:todos_app/screens/add_todo/add_todo_page.dart';
import 'package:todos_app/screens/home/widgets/todos_view.dart';
import 'package:todos_app/utils/keys.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = StoreProvider.of<AppState>(context)
      ..dispatch(GetTodoListMiddlewareTodoAction());
    return Scaffold(
      appBar: AppBar(title: const Text('Todos')),
      body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: TodosView()),
      bottomNavigationBar: StoreConnector<AppState, BottomNavigationState>(
          converter: (store) => store.state.bottomNavState,
          builder: (context, bottomNavState) {
            return BottomNavigationBar(
                currentIndex: BottomNavigationState.toIndex(bottomNavState),
                onTap: (index) {
                  store.dispatch(ChangeTabAction.create(
                      BottomNavigationState.valueAt(index)));
                },
                items: const [
                  BottomNavigationBarItem(icon: Icon(Icons.list), label: 'All'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.check_box_outline_blank),
                      label: 'Incomplete'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.check_box), label: 'Complete'),
                ]);
          }),
      floatingActionButton: FloatingActionButton(
        key: Key(AppKeys.addTodoButton),
        onPressed: () async {
          await Navigator.push(context,
              MaterialPageRoute(builder: (context) => const AddTodoPage()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
