import 'package:redux_epics/redux_epics.dart';
import 'package:todo_package/todo_package.dart';
import 'package:todos_app/models/app_state.dart';
import 'package:todos_app/models/bottom_navigation_state.dart';
import 'package:todos_app/redux/actions/actions.dart';

class UIMiddleware extends EpicClass<AppState> {
  @override
  Stream call(Stream actions, EpicStore<AppState> store) {
    return combineEpics<AppState>([_changeTabMiddleware])(actions, store);
  }

  Stream<dynamic> _changeTabMiddleware(
      Stream<dynamic> actions, EpicStore<AppState> store) async* {
    await for (var action in actions) {
      if (action is ChangeTabAction) {
        final TodoFilter todoFilter = TodoFilter((p1) => p1
          ..todoType = TodoType.values[
              BottomNavigationState.toIndex(action.bottomNavigationState)]);
        yield GetTodoListMiddlewareTodoAction.create(todoFilter);
      }
    }
  }
}
