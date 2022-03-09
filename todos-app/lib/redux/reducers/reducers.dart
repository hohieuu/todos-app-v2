import 'package:redux/redux.dart';
import 'package:todo_package/todo_package.dart';
import 'package:todos_app/models/app_state.dart';
import 'package:todos_app/redux/actions/actions.dart';

Reducer<AppState> appReducer = combineReducers([
  TypedReducer<AppState, ChangeTabAction>(_changeTabReducer),
  domainReducers
]);

AppState domainReducers(AppState state, dynamic action) {
  return state.rebuild(
    (builder) =>
        builder..todoState = todoReducer(state.todoState, action).toBuilder(),
  );
}

AppState _changeTabReducer(AppState state, ChangeTabAction action) {
  return state.rebuild(
      (values) => values..bottomNavState = action.bottomNavigationState);
}
