import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'bottom_navigation_state.g.dart';

class BottomNavigationState extends EnumClass {
  static const BottomNavigationState all = _$all;
  static const BottomNavigationState incomplete = _$incomplete;
  static const BottomNavigationState complete = _$complete;

  const BottomNavigationState._(String name) : super(name);

  static BuiltSet<BottomNavigationState> get values =>
      _$BottomNavigationStateValues;
  static BottomNavigationState valueOf(String name) =>
      _$BottomNavigationStateValueOf(name);

  static valueAt(int index) {
    switch (index) {
      case 0:
        return all;
      case 1:
        return incomplete;
      case 2:
        return complete;
      default:
    }
  }

  static toIndex(BottomNavigationState bottomNavState) {
    switch (bottomNavState) {
      case all:
        return 0;
      case incomplete:
        return 1;
      case complete:
        return 2;
      default:
    }
  }
}
