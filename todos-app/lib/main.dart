import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:get_it/get_it.dart';
import 'package:redux/redux.dart';
import 'package:todo_package/todo_package.dart';
import 'package:todos_app/constants/theme.dart';
import 'package:todos_app/models/app_state.dart';
import 'package:todos_app/redux/reducers/reducers.dart';

import 'di/injector.dart';
import 'redux/middlewares.dart/middlewares.dart';
import 'screens/home/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  final todosRepository = GetIt.instance<TodosRepository>();
  final store = Store<AppState>(
    appReducer,
    initialState: AppState.init(),
    middleware: createMiddleware(todosRepository),
  );

  runApp(MyApp(
    store: store,
  ));
}

class MyApp extends StatelessWidget {
  final Store<AppState> store;
  const MyApp({Key? key, required this.store}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
        store: store,
        child: MaterialApp(
            title: 'Todos',
            debugShowCheckedModeBanner: false,
            theme: AppTheme.themeData,
            home: const HomePage()));
  }
}
