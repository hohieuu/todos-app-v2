import 'package:flutter/material.dart';
import 'package:integration_test/integration_test.dart';
import 'package:mockito/annotations.dart';
import 'package:redux/redux.dart';
import 'package:todo_package/todo_package.dart';
import 'package:todos_app/main.dart';
import 'package:todos_app/models/app_state.dart';
import 'package:todos_app/redux/middlewares.dart/middlewares.dart';
import 'package:todos_app/redux/reducers/reducers.dart';

@GenerateMocks([TodosRepository])
void main(List<String> args, {TodosRepository? todosRepository}) {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp(
      store: Store<AppState>(
    appReducer,
    initialState: AppState.init(),
    middleware: createMiddleware(todosRepository!),
  )));
}
