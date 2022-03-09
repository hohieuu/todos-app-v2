// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AppState extends AppState {
  @override
  final BottomNavigationState bottomNavState;
  @override
  final TodoState todoState;

  factory _$AppState([void Function(AppStateBuilder)? updates]) =>
      (new AppStateBuilder()..update(updates)).build();

  _$AppState._({required this.bottomNavState, required this.todoState})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bottomNavState, 'AppState', 'bottomNavState');
    BuiltValueNullFieldError.checkNotNull(todoState, 'AppState', 'todoState');
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        bottomNavState == other.bottomNavState &&
        todoState == other.todoState;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, bottomNavState.hashCode), todoState.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')
          ..add('bottomNavState', bottomNavState)
          ..add('todoState', todoState))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState? _$v;

  BottomNavigationState? _bottomNavState;
  BottomNavigationState? get bottomNavState => _$this._bottomNavState;
  set bottomNavState(BottomNavigationState? bottomNavState) =>
      _$this._bottomNavState = bottomNavState;

  TodoStateBuilder? _todoState;
  TodoStateBuilder get todoState =>
      _$this._todoState ??= new TodoStateBuilder();
  set todoState(TodoStateBuilder? todoState) => _$this._todoState = todoState;

  AppStateBuilder();

  AppStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bottomNavState = $v.bottomNavState;
      _todoState = $v.todoState.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppState build() {
    _$AppState _$result;
    try {
      _$result = _$v ??
          new _$AppState._(
              bottomNavState: BuiltValueNullFieldError.checkNotNull(
                  bottomNavState, 'AppState', 'bottomNavState'),
              todoState: todoState.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'todoState';
        todoState.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
