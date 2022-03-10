// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_actions.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetTodoListMiddlewareTodoAction
    extends GetTodoListMiddlewareTodoAction {
  @override
  final String statusKey;
  @override
  final TodoFilter todoFilter;

  factory _$GetTodoListMiddlewareTodoAction(
          [void Function(GetTodoListMiddlewareTodoActionBuilder)? updates]) =>
      (new GetTodoListMiddlewareTodoActionBuilder()..update(updates)).build();

  _$GetTodoListMiddlewareTodoAction._(
      {required this.statusKey, required this.todoFilter})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        statusKey, 'GetTodoListMiddlewareTodoAction', 'statusKey');
    BuiltValueNullFieldError.checkNotNull(
        todoFilter, 'GetTodoListMiddlewareTodoAction', 'todoFilter');
  }

  @override
  GetTodoListMiddlewareTodoAction rebuild(
          void Function(GetTodoListMiddlewareTodoActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetTodoListMiddlewareTodoActionBuilder toBuilder() =>
      new GetTodoListMiddlewareTodoActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetTodoListMiddlewareTodoAction &&
        statusKey == other.statusKey &&
        todoFilter == other.todoFilter;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, statusKey.hashCode), todoFilter.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetTodoListMiddlewareTodoAction')
          ..add('statusKey', statusKey)
          ..add('todoFilter', todoFilter))
        .toString();
  }
}

class GetTodoListMiddlewareTodoActionBuilder
    implements
        Builder<GetTodoListMiddlewareTodoAction,
            GetTodoListMiddlewareTodoActionBuilder> {
  _$GetTodoListMiddlewareTodoAction? _$v;

  String? _statusKey;
  String? get statusKey => _$this._statusKey;
  set statusKey(String? statusKey) => _$this._statusKey = statusKey;

  TodoFilterBuilder? _todoFilter;
  TodoFilterBuilder get todoFilter =>
      _$this._todoFilter ??= new TodoFilterBuilder();
  set todoFilter(TodoFilterBuilder? todoFilter) =>
      _$this._todoFilter = todoFilter;

  GetTodoListMiddlewareTodoActionBuilder() {
    GetTodoListMiddlewareTodoAction._setDefaults(this);
  }

  GetTodoListMiddlewareTodoActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _statusKey = $v.statusKey;
      _todoFilter = $v.todoFilter.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetTodoListMiddlewareTodoAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetTodoListMiddlewareTodoAction;
  }

  @override
  void update(void Function(GetTodoListMiddlewareTodoActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetTodoListMiddlewareTodoAction build() {
    _$GetTodoListMiddlewareTodoAction _$result;
    try {
      _$result = _$v ??
          new _$GetTodoListMiddlewareTodoAction._(
              statusKey: BuiltValueNullFieldError.checkNotNull(
                  statusKey, 'GetTodoListMiddlewareTodoAction', 'statusKey'),
              todoFilter: todoFilter.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'todoFilter';
        todoFilter.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GetTodoListMiddlewareTodoAction', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$SetFilterReducerTodoAction extends SetFilterReducerTodoAction {
  @override
  final String statusKey;
  @override
  final TodoFilter todoFilter;

  factory _$SetFilterReducerTodoAction(
          [void Function(SetFilterReducerTodoActionBuilder)? updates]) =>
      (new SetFilterReducerTodoActionBuilder()..update(updates)).build();

  _$SetFilterReducerTodoAction._(
      {required this.statusKey, required this.todoFilter})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        statusKey, 'SetFilterReducerTodoAction', 'statusKey');
    BuiltValueNullFieldError.checkNotNull(
        todoFilter, 'SetFilterReducerTodoAction', 'todoFilter');
  }

  @override
  SetFilterReducerTodoAction rebuild(
          void Function(SetFilterReducerTodoActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetFilterReducerTodoActionBuilder toBuilder() =>
      new SetFilterReducerTodoActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetFilterReducerTodoAction &&
        statusKey == other.statusKey &&
        todoFilter == other.todoFilter;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, statusKey.hashCode), todoFilter.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SetFilterReducerTodoAction')
          ..add('statusKey', statusKey)
          ..add('todoFilter', todoFilter))
        .toString();
  }
}

class SetFilterReducerTodoActionBuilder
    implements
        Builder<SetFilterReducerTodoAction, SetFilterReducerTodoActionBuilder> {
  _$SetFilterReducerTodoAction? _$v;

  String? _statusKey;
  String? get statusKey => _$this._statusKey;
  set statusKey(String? statusKey) => _$this._statusKey = statusKey;

  TodoFilterBuilder? _todoFilter;
  TodoFilterBuilder get todoFilter =>
      _$this._todoFilter ??= new TodoFilterBuilder();
  set todoFilter(TodoFilterBuilder? todoFilter) =>
      _$this._todoFilter = todoFilter;

  SetFilterReducerTodoActionBuilder();

  SetFilterReducerTodoActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _statusKey = $v.statusKey;
      _todoFilter = $v.todoFilter.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SetFilterReducerTodoAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SetFilterReducerTodoAction;
  }

  @override
  void update(void Function(SetFilterReducerTodoActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SetFilterReducerTodoAction build() {
    _$SetFilterReducerTodoAction _$result;
    try {
      _$result = _$v ??
          new _$SetFilterReducerTodoAction._(
              statusKey: BuiltValueNullFieldError.checkNotNull(
                  statusKey, 'SetFilterReducerTodoAction', 'statusKey'),
              todoFilter: todoFilter.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'todoFilter';
        todoFilter.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SetFilterReducerTodoAction', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$SetStatusReducerTodoAction extends SetStatusReducerTodoAction {
  @override
  final Status status;
  @override
  final String statusKey;

  factory _$SetStatusReducerTodoAction(
          [void Function(SetStatusReducerTodoActionBuilder)? updates]) =>
      (new SetStatusReducerTodoActionBuilder()..update(updates)).build();

  _$SetStatusReducerTodoAction._(
      {required this.status, required this.statusKey})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        status, 'SetStatusReducerTodoAction', 'status');
    BuiltValueNullFieldError.checkNotNull(
        statusKey, 'SetStatusReducerTodoAction', 'statusKey');
  }

  @override
  SetStatusReducerTodoAction rebuild(
          void Function(SetStatusReducerTodoActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetStatusReducerTodoActionBuilder toBuilder() =>
      new SetStatusReducerTodoActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetStatusReducerTodoAction &&
        status == other.status &&
        statusKey == other.statusKey;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, status.hashCode), statusKey.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SetStatusReducerTodoAction')
          ..add('status', status)
          ..add('statusKey', statusKey))
        .toString();
  }
}

class SetStatusReducerTodoActionBuilder
    implements
        Builder<SetStatusReducerTodoAction, SetStatusReducerTodoActionBuilder> {
  _$SetStatusReducerTodoAction? _$v;

  StatusBuilder? _status;
  StatusBuilder get status => _$this._status ??= new StatusBuilder();
  set status(StatusBuilder? status) => _$this._status = status;

  String? _statusKey;
  String? get statusKey => _$this._statusKey;
  set statusKey(String? statusKey) => _$this._statusKey = statusKey;

  SetStatusReducerTodoActionBuilder();

  SetStatusReducerTodoActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status.toBuilder();
      _statusKey = $v.statusKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SetStatusReducerTodoAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SetStatusReducerTodoAction;
  }

  @override
  void update(void Function(SetStatusReducerTodoActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SetStatusReducerTodoAction build() {
    _$SetStatusReducerTodoAction _$result;
    try {
      _$result = _$v ??
          new _$SetStatusReducerTodoAction._(
              status: status.build(),
              statusKey: BuiltValueNullFieldError.checkNotNull(
                  statusKey, 'SetStatusReducerTodoAction', 'statusKey'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'status';
        status.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SetStatusReducerTodoAction', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CompleteItemMiddlewareTodoAction
    extends CompleteItemMiddlewareTodoAction {
  @override
  final Todo todo;
  @override
  final String statusKey;

  factory _$CompleteItemMiddlewareTodoAction(
          [void Function(CompleteItemMiddlewareTodoActionBuilder)? updates]) =>
      (new CompleteItemMiddlewareTodoActionBuilder()..update(updates)).build();

  _$CompleteItemMiddlewareTodoAction._(
      {required this.todo, required this.statusKey})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        todo, 'CompleteItemMiddlewareTodoAction', 'todo');
    BuiltValueNullFieldError.checkNotNull(
        statusKey, 'CompleteItemMiddlewareTodoAction', 'statusKey');
  }

  @override
  CompleteItemMiddlewareTodoAction rebuild(
          void Function(CompleteItemMiddlewareTodoActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CompleteItemMiddlewareTodoActionBuilder toBuilder() =>
      new CompleteItemMiddlewareTodoActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CompleteItemMiddlewareTodoAction &&
        todo == other.todo &&
        statusKey == other.statusKey;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, todo.hashCode), statusKey.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CompleteItemMiddlewareTodoAction')
          ..add('todo', todo)
          ..add('statusKey', statusKey))
        .toString();
  }
}

class CompleteItemMiddlewareTodoActionBuilder
    implements
        Builder<CompleteItemMiddlewareTodoAction,
            CompleteItemMiddlewareTodoActionBuilder> {
  _$CompleteItemMiddlewareTodoAction? _$v;

  TodoBuilder? _todo;
  TodoBuilder get todo => _$this._todo ??= new TodoBuilder();
  set todo(TodoBuilder? todo) => _$this._todo = todo;

  String? _statusKey;
  String? get statusKey => _$this._statusKey;
  set statusKey(String? statusKey) => _$this._statusKey = statusKey;

  CompleteItemMiddlewareTodoActionBuilder();

  CompleteItemMiddlewareTodoActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _todo = $v.todo.toBuilder();
      _statusKey = $v.statusKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CompleteItemMiddlewareTodoAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CompleteItemMiddlewareTodoAction;
  }

  @override
  void update(void Function(CompleteItemMiddlewareTodoActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CompleteItemMiddlewareTodoAction build() {
    _$CompleteItemMiddlewareTodoAction _$result;
    try {
      _$result = _$v ??
          new _$CompleteItemMiddlewareTodoAction._(
              todo: todo.build(),
              statusKey: BuiltValueNullFieldError.checkNotNull(
                  statusKey, 'CompleteItemMiddlewareTodoAction', 'statusKey'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'todo';
        todo.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CompleteItemMiddlewareTodoAction', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$SetTodoListReducerTodoAction extends SetTodoListReducerTodoAction {
  @override
  final BuiltList<Todo> todos;
  @override
  final String statusKey;

  factory _$SetTodoListReducerTodoAction(
          [void Function(SetTodoListReducerTodoActionBuilder)? updates]) =>
      (new SetTodoListReducerTodoActionBuilder()..update(updates)).build();

  _$SetTodoListReducerTodoAction._(
      {required this.todos, required this.statusKey})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        todos, 'SetTodoListReducerTodoAction', 'todos');
    BuiltValueNullFieldError.checkNotNull(
        statusKey, 'SetTodoListReducerTodoAction', 'statusKey');
  }

  @override
  SetTodoListReducerTodoAction rebuild(
          void Function(SetTodoListReducerTodoActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetTodoListReducerTodoActionBuilder toBuilder() =>
      new SetTodoListReducerTodoActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetTodoListReducerTodoAction &&
        todos == other.todos &&
        statusKey == other.statusKey;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, todos.hashCode), statusKey.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SetTodoListReducerTodoAction')
          ..add('todos', todos)
          ..add('statusKey', statusKey))
        .toString();
  }
}

class SetTodoListReducerTodoActionBuilder
    implements
        Builder<SetTodoListReducerTodoAction,
            SetTodoListReducerTodoActionBuilder> {
  _$SetTodoListReducerTodoAction? _$v;

  ListBuilder<Todo>? _todos;
  ListBuilder<Todo> get todos => _$this._todos ??= new ListBuilder<Todo>();
  set todos(ListBuilder<Todo>? todos) => _$this._todos = todos;

  String? _statusKey;
  String? get statusKey => _$this._statusKey;
  set statusKey(String? statusKey) => _$this._statusKey = statusKey;

  SetTodoListReducerTodoActionBuilder() {
    SetTodoListReducerTodoAction._setDefaults(this);
  }

  SetTodoListReducerTodoActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _todos = $v.todos.toBuilder();
      _statusKey = $v.statusKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SetTodoListReducerTodoAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SetTodoListReducerTodoAction;
  }

  @override
  void update(void Function(SetTodoListReducerTodoActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SetTodoListReducerTodoAction build() {
    _$SetTodoListReducerTodoAction _$result;
    try {
      _$result = _$v ??
          new _$SetTodoListReducerTodoAction._(
              todos: todos.build(),
              statusKey: BuiltValueNullFieldError.checkNotNull(
                  statusKey, 'SetTodoListReducerTodoAction', 'statusKey'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'todos';
        todos.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SetTodoListReducerTodoAction', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$AddItemMiddlewareTodoAction extends AddItemMiddlewareTodoAction {
  @override
  final Todo todo;
  @override
  final String statusKey;

  factory _$AddItemMiddlewareTodoAction(
          [void Function(AddItemMiddlewareTodoActionBuilder)? updates]) =>
      (new AddItemMiddlewareTodoActionBuilder()..update(updates)).build();

  _$AddItemMiddlewareTodoAction._({required this.todo, required this.statusKey})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        todo, 'AddItemMiddlewareTodoAction', 'todo');
    BuiltValueNullFieldError.checkNotNull(
        statusKey, 'AddItemMiddlewareTodoAction', 'statusKey');
  }

  @override
  AddItemMiddlewareTodoAction rebuild(
          void Function(AddItemMiddlewareTodoActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddItemMiddlewareTodoActionBuilder toBuilder() =>
      new AddItemMiddlewareTodoActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddItemMiddlewareTodoAction &&
        todo == other.todo &&
        statusKey == other.statusKey;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, todo.hashCode), statusKey.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AddItemMiddlewareTodoAction')
          ..add('todo', todo)
          ..add('statusKey', statusKey))
        .toString();
  }
}

class AddItemMiddlewareTodoActionBuilder
    implements
        Builder<AddItemMiddlewareTodoAction,
            AddItemMiddlewareTodoActionBuilder> {
  _$AddItemMiddlewareTodoAction? _$v;

  TodoBuilder? _todo;
  TodoBuilder get todo => _$this._todo ??= new TodoBuilder();
  set todo(TodoBuilder? todo) => _$this._todo = todo;

  String? _statusKey;
  String? get statusKey => _$this._statusKey;
  set statusKey(String? statusKey) => _$this._statusKey = statusKey;

  AddItemMiddlewareTodoActionBuilder();

  AddItemMiddlewareTodoActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _todo = $v.todo.toBuilder();
      _statusKey = $v.statusKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddItemMiddlewareTodoAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddItemMiddlewareTodoAction;
  }

  @override
  void update(void Function(AddItemMiddlewareTodoActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AddItemMiddlewareTodoAction build() {
    _$AddItemMiddlewareTodoAction _$result;
    try {
      _$result = _$v ??
          new _$AddItemMiddlewareTodoAction._(
              todo: todo.build(),
              statusKey: BuiltValueNullFieldError.checkNotNull(
                  statusKey, 'AddItemMiddlewareTodoAction', 'statusKey'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'todo';
        todo.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AddItemMiddlewareTodoAction', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
