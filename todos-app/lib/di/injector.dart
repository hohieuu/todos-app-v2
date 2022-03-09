import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_package/todo_package.dart';
import 'package:todo_service/todo_service.dart';

// import 'injector.config.dart';

final getIt = GetIt.instance;

// @InjectableInit()
void configureDependencies()
//  => $initGetIt(getIt);
{
  getIt.registerSingleton<TodosProvider>(TodosProvider());

  getIt.registerSingleton<TodosLocalService>(
      TodosLocalService(getIt.get<TodosProvider>()));

  getIt.registerSingleton<TodosRepository>(
      TodosRepository(getIt.get<TodosLocalService>()));
}
