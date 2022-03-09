// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TodoState extends TodoState {
  @override
  final BuiltList<Todo> todos;
  @override
  final TodoFilter todoFilter;
  @override
  final BuiltMap<String, Status> statuses;

  factory _$TodoState([void Function(TodoStateBuilder)? updates]) =>
      (new TodoStateBuilder()..update(updates)).build();

  _$TodoState._(
      {required this.todos, required this.todoFilter, required this.statuses})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(todos, 'TodoState', 'todos');
    BuiltValueNullFieldError.checkNotNull(
        todoFilter, 'TodoState', 'todoFilter');
    BuiltValueNullFieldError.checkNotNull(statuses, 'TodoState', 'statuses');
  }

  @override
  TodoState rebuild(void Function(TodoStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TodoStateBuilder toBuilder() => new TodoStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TodoState &&
        todos == other.todos &&
        todoFilter == other.todoFilter &&
        statuses == other.statuses;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, todos.hashCode), todoFilter.hashCode), statuses.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TodoState')
          ..add('todos', todos)
          ..add('todoFilter', todoFilter)
          ..add('statuses', statuses))
        .toString();
  }
}

class TodoStateBuilder implements Builder<TodoState, TodoStateBuilder> {
  _$TodoState? _$v;

  ListBuilder<Todo>? _todos;
  ListBuilder<Todo> get todos => _$this._todos ??= new ListBuilder<Todo>();
  set todos(ListBuilder<Todo>? todos) => _$this._todos = todos;

  TodoFilterBuilder? _todoFilter;
  TodoFilterBuilder get todoFilter =>
      _$this._todoFilter ??= new TodoFilterBuilder();
  set todoFilter(TodoFilterBuilder? todoFilter) =>
      _$this._todoFilter = todoFilter;

  MapBuilder<String, Status>? _statuses;
  MapBuilder<String, Status> get statuses =>
      _$this._statuses ??= new MapBuilder<String, Status>();
  set statuses(MapBuilder<String, Status>? statuses) =>
      _$this._statuses = statuses;

  TodoStateBuilder() {
    TodoState._setDefaults(this);
  }

  TodoStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _todos = $v.todos.toBuilder();
      _todoFilter = $v.todoFilter.toBuilder();
      _statuses = $v.statuses.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TodoState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TodoState;
  }

  @override
  void update(void Function(TodoStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TodoState build() {
    _$TodoState _$result;
    try {
      _$result = _$v ??
          new _$TodoState._(
              todos: todos.build(),
              todoFilter: todoFilter.build(),
              statuses: statuses.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'todos';
        todos.build();
        _$failedField = 'todoFilter';
        todoFilter.build();
        _$failedField = 'statuses';
        statuses.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TodoState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
