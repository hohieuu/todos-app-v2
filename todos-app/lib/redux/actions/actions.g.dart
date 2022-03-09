// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'actions.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChangeTabAction extends ChangeTabAction {
  @override
  final BottomNavigationState bottomNavigationState;

  factory _$ChangeTabAction([void Function(ChangeTabActionBuilder)? updates]) =>
      (new ChangeTabActionBuilder()..update(updates)).build();

  _$ChangeTabAction._({required this.bottomNavigationState}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bottomNavigationState, 'ChangeTabAction', 'bottomNavigationState');
  }

  @override
  ChangeTabAction rebuild(void Function(ChangeTabActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeTabActionBuilder toBuilder() =>
      new ChangeTabActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeTabAction &&
        bottomNavigationState == other.bottomNavigationState;
  }

  @override
  int get hashCode {
    return $jf($jc(0, bottomNavigationState.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ChangeTabAction')
          ..add('bottomNavigationState', bottomNavigationState))
        .toString();
  }
}

class ChangeTabActionBuilder
    implements Builder<ChangeTabAction, ChangeTabActionBuilder> {
  _$ChangeTabAction? _$v;

  BottomNavigationState? _bottomNavigationState;
  BottomNavigationState? get bottomNavigationState =>
      _$this._bottomNavigationState;
  set bottomNavigationState(BottomNavigationState? bottomNavigationState) =>
      _$this._bottomNavigationState = bottomNavigationState;

  ChangeTabActionBuilder();

  ChangeTabActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bottomNavigationState = $v.bottomNavigationState;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangeTabAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangeTabAction;
  }

  @override
  void update(void Function(ChangeTabActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ChangeTabAction build() {
    final _$result = _$v ??
        new _$ChangeTabAction._(
            bottomNavigationState: BuiltValueNullFieldError.checkNotNull(
                bottomNavigationState,
                'ChangeTabAction',
                'bottomNavigationState'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
