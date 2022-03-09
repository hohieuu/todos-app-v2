import 'package:built_value/built_value.dart';
import 'package:injectable/injectable.dart';
import 'package:todos_app/models/bottom_navigation_state.dart';

part 'actions.g.dart';

// @module
abstract class ChangeTabAction
    implements Built<ChangeTabAction, ChangeTabActionBuilder> {
  BottomNavigationState get bottomNavigationState;

  ChangeTabAction._();
  factory ChangeTabAction([void Function(ChangeTabActionBuilder) updates]) =
      _$ChangeTabAction;

  factory ChangeTabAction.create(BottomNavigationState bottomNavigationState) {
    return ChangeTabAction(
      (builder) => builder..bottomNavigationState = bottomNavigationState,
    );
  }
}
