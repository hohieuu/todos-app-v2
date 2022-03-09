import 'package:built_value/built_value.dart';
import 'package:todo_package/todo_package.dart';
import 'package:todos_app/models/bottom_navigation_state.dart';

part 'app_state.g.dart';

abstract class AppState
    implements Built<AppState, AppStateBuilder>, AbstractTodoFeature {
  BottomNavigationState get bottomNavState;

  @override
  TodoState get todoState;

  AppState._();

  factory AppState.init() {
    return AppState(
        (updates) => updates..bottomNavState = BottomNavigationState.all);
  }
  factory AppState([void Function(AppStateBuilder) updates]) = _$AppState;
}
