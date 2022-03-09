// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TodoFilter extends TodoFilter {
  @override
  final TodoType todoType;

  factory _$TodoFilter([void Function(TodoFilterBuilder)? updates]) =>
      (new TodoFilterBuilder()..update(updates)).build();

  _$TodoFilter._({required this.todoType}) : super._() {
    BuiltValueNullFieldError.checkNotNull(todoType, 'TodoFilter', 'todoType');
  }

  @override
  TodoFilter rebuild(void Function(TodoFilterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TodoFilterBuilder toBuilder() => new TodoFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TodoFilter && todoType == other.todoType;
  }

  @override
  int get hashCode {
    return $jf($jc(0, todoType.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TodoFilter')
          ..add('todoType', todoType))
        .toString();
  }
}

class TodoFilterBuilder implements Builder<TodoFilter, TodoFilterBuilder> {
  _$TodoFilter? _$v;

  TodoType? _todoType;
  TodoType? get todoType => _$this._todoType;
  set todoType(TodoType? todoType) => _$this._todoType = todoType;

  TodoFilterBuilder() {
    TodoFilter._setDefaults(this);
  }

  TodoFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _todoType = $v.todoType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TodoFilter other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TodoFilter;
  }

  @override
  void update(void Function(TodoFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TodoFilter build() {
    final _$result = _$v ??
        new _$TodoFilter._(
            todoType: BuiltValueNullFieldError.checkNotNull(
                todoType, 'TodoFilter', 'todoType'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
