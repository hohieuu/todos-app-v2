// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_actions.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetTodoListTodoAction extends GetTodoListTodoAction {
  @override
  final String statusKey;
  @override
  final TodoFilter todoFilter;

  factory _$GetTodoListTodoAction(
          [void Function(GetTodoListTodoActionBuilder)? updates]) =>
      (new GetTodoListTodoActionBuilder()..update(updates)).build();

  _$GetTodoListTodoAction._({required this.statusKey, required this.todoFilter})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        statusKey, 'GetTodoListTodoAction', 'statusKey');
    BuiltValueNullFieldError.checkNotNull(
        todoFilter, 'GetTodoListTodoAction', 'todoFilter');
  }

  @override
  GetTodoListTodoAction rebuild(
          void Function(GetTodoListTodoActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetTodoListTodoActionBuilder toBuilder() =>
      new GetTodoListTodoActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetTodoListTodoAction &&
        statusKey == other.statusKey &&
        todoFilter == other.todoFilter;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, statusKey.hashCode), todoFilter.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetTodoListTodoAction')
          ..add('statusKey', statusKey)
          ..add('todoFilter', todoFilter))
        .toString();
  }
}

class GetTodoListTodoActionBuilder
    implements Builder<GetTodoListTodoAction, GetTodoListTodoActionBuilder> {
  _$GetTodoListTodoAction? _$v;

  String? _statusKey;
  String? get statusKey => _$this._statusKey;
  set statusKey(String? statusKey) => _$this._statusKey = statusKey;

  TodoFilterBuilder? _todoFilter;
  TodoFilterBuilder get todoFilter =>
      _$this._todoFilter ??= new TodoFilterBuilder();
  set todoFilter(TodoFilterBuilder? todoFilter) =>
      _$this._todoFilter = todoFilter;

  GetTodoListTodoActionBuilder() {
    GetTodoListTodoAction._setDefaults(this);
  }

  GetTodoListTodoActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _statusKey = $v.statusKey;
      _todoFilter = $v.todoFilter.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetTodoListTodoAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetTodoListTodoAction;
  }

  @override
  void update(void Function(GetTodoListTodoActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetTodoListTodoAction build() {
    _$GetTodoListTodoAction _$result;
    try {
      _$result = _$v ??
          new _$GetTodoListTodoAction._(
              statusKey: BuiltValueNullFieldError.checkNotNull(
                  statusKey, 'GetTodoListTodoAction', 'statusKey'),
              todoFilter: todoFilter.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'todoFilter';
        todoFilter.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GetTodoListTodoAction', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$SetFilterTodoAction extends SetFilterTodoAction {
  @override
  final String statusKey;
  @override
  final TodoFilter todoFilter;

  factory _$SetFilterTodoAction(
          [void Function(SetFilterTodoActionBuilder)? updates]) =>
      (new SetFilterTodoActionBuilder()..update(updates)).build();

  _$SetFilterTodoAction._({required this.statusKey, required this.todoFilter})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        statusKey, 'SetFilterTodoAction', 'statusKey');
    BuiltValueNullFieldError.checkNotNull(
        todoFilter, 'SetFilterTodoAction', 'todoFilter');
  }

  @override
  SetFilterTodoAction rebuild(
          void Function(SetFilterTodoActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetFilterTodoActionBuilder toBuilder() =>
      new SetFilterTodoActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetFilterTodoAction &&
        statusKey == other.statusKey &&
        todoFilter == other.todoFilter;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, statusKey.hashCode), todoFilter.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SetFilterTodoAction')
          ..add('statusKey', statusKey)
          ..add('todoFilter', todoFilter))
        .toString();
  }
}

class SetFilterTodoActionBuilder
    implements Builder<SetFilterTodoAction, SetFilterTodoActionBuilder> {
  _$SetFilterTodoAction? _$v;

  String? _statusKey;
  String? get statusKey => _$this._statusKey;
  set statusKey(String? statusKey) => _$this._statusKey = statusKey;

  TodoFilterBuilder? _todoFilter;
  TodoFilterBuilder get todoFilter =>
      _$this._todoFilter ??= new TodoFilterBuilder();
  set todoFilter(TodoFilterBuilder? todoFilter) =>
      _$this._todoFilter = todoFilter;

  SetFilterTodoActionBuilder();

  SetFilterTodoActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _statusKey = $v.statusKey;
      _todoFilter = $v.todoFilter.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SetFilterTodoAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SetFilterTodoAction;
  }

  @override
  void update(void Function(SetFilterTodoActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SetFilterTodoAction build() {
    _$SetFilterTodoAction _$result;
    try {
      _$result = _$v ??
          new _$SetFilterTodoAction._(
              statusKey: BuiltValueNullFieldError.checkNotNull(
                  statusKey, 'SetFilterTodoAction', 'statusKey'),
              todoFilter: todoFilter.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'todoFilter';
        todoFilter.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SetFilterTodoAction', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$SetStatusTodoAction extends SetStatusTodoAction {
  @override
  final Status status;
  @override
  final String statusKey;

  factory _$SetStatusTodoAction(
          [void Function(SetStatusTodoActionBuilder)? updates]) =>
      (new SetStatusTodoActionBuilder()..update(updates)).build();

  _$SetStatusTodoAction._({required this.status, required this.statusKey})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        status, 'SetStatusTodoAction', 'status');
    BuiltValueNullFieldError.checkNotNull(
        statusKey, 'SetStatusTodoAction', 'statusKey');
  }

  @override
  SetStatusTodoAction rebuild(
          void Function(SetStatusTodoActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetStatusTodoActionBuilder toBuilder() =>
      new SetStatusTodoActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetStatusTodoAction &&
        status == other.status &&
        statusKey == other.statusKey;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, status.hashCode), statusKey.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SetStatusTodoAction')
          ..add('status', status)
          ..add('statusKey', statusKey))
        .toString();
  }
}

class SetStatusTodoActionBuilder
    implements Builder<SetStatusTodoAction, SetStatusTodoActionBuilder> {
  _$SetStatusTodoAction? _$v;

  StatusBuilder? _status;
  StatusBuilder get status => _$this._status ??= new StatusBuilder();
  set status(StatusBuilder? status) => _$this._status = status;

  String? _statusKey;
  String? get statusKey => _$this._statusKey;
  set statusKey(String? statusKey) => _$this._statusKey = statusKey;

  SetStatusTodoActionBuilder();

  SetStatusTodoActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status.toBuilder();
      _statusKey = $v.statusKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SetStatusTodoAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SetStatusTodoAction;
  }

  @override
  void update(void Function(SetStatusTodoActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SetStatusTodoAction build() {
    _$SetStatusTodoAction _$result;
    try {
      _$result = _$v ??
          new _$SetStatusTodoAction._(
              status: status.build(),
              statusKey: BuiltValueNullFieldError.checkNotNull(
                  statusKey, 'SetStatusTodoAction', 'statusKey'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'status';
        status.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SetStatusTodoAction', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CompleteItemTodoAction extends CompleteItemTodoAction {
  @override
  final Todo todo;
  @override
  final String statusKey;

  factory _$CompleteItemTodoAction(
          [void Function(CompleteItemTodoActionBuilder)? updates]) =>
      (new CompleteItemTodoActionBuilder()..update(updates)).build();

  _$CompleteItemTodoAction._({required this.todo, required this.statusKey})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        todo, 'CompleteItemTodoAction', 'todo');
    BuiltValueNullFieldError.checkNotNull(
        statusKey, 'CompleteItemTodoAction', 'statusKey');
  }

  @override
  CompleteItemTodoAction rebuild(
          void Function(CompleteItemTodoActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CompleteItemTodoActionBuilder toBuilder() =>
      new CompleteItemTodoActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CompleteItemTodoAction &&
        todo == other.todo &&
        statusKey == other.statusKey;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, todo.hashCode), statusKey.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CompleteItemTodoAction')
          ..add('todo', todo)
          ..add('statusKey', statusKey))
        .toString();
  }
}

class CompleteItemTodoActionBuilder
    implements Builder<CompleteItemTodoAction, CompleteItemTodoActionBuilder> {
  _$CompleteItemTodoAction? _$v;

  TodoBuilder? _todo;
  TodoBuilder get todo => _$this._todo ??= new TodoBuilder();
  set todo(TodoBuilder? todo) => _$this._todo = todo;

  String? _statusKey;
  String? get statusKey => _$this._statusKey;
  set statusKey(String? statusKey) => _$this._statusKey = statusKey;

  CompleteItemTodoActionBuilder();

  CompleteItemTodoActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _todo = $v.todo.toBuilder();
      _statusKey = $v.statusKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CompleteItemTodoAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CompleteItemTodoAction;
  }

  @override
  void update(void Function(CompleteItemTodoActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CompleteItemTodoAction build() {
    _$CompleteItemTodoAction _$result;
    try {
      _$result = _$v ??
          new _$CompleteItemTodoAction._(
              todo: todo.build(),
              statusKey: BuiltValueNullFieldError.checkNotNull(
                  statusKey, 'CompleteItemTodoAction', 'statusKey'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'todo';
        todo.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CompleteItemTodoAction', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$SetTodoListTodoAction extends SetTodoListTodoAction {
  @override
  final BuiltList<Todo> todos;
  @override
  final String statusKey;

  factory _$SetTodoListTodoAction(
          [void Function(SetTodoListTodoActionBuilder)? updates]) =>
      (new SetTodoListTodoActionBuilder()..update(updates)).build();

  _$SetTodoListTodoAction._({required this.todos, required this.statusKey})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        todos, 'SetTodoListTodoAction', 'todos');
    BuiltValueNullFieldError.checkNotNull(
        statusKey, 'SetTodoListTodoAction', 'statusKey');
  }

  @override
  SetTodoListTodoAction rebuild(
          void Function(SetTodoListTodoActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetTodoListTodoActionBuilder toBuilder() =>
      new SetTodoListTodoActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetTodoListTodoAction &&
        todos == other.todos &&
        statusKey == other.statusKey;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, todos.hashCode), statusKey.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SetTodoListTodoAction')
          ..add('todos', todos)
          ..add('statusKey', statusKey))
        .toString();
  }
}

class SetTodoListTodoActionBuilder
    implements Builder<SetTodoListTodoAction, SetTodoListTodoActionBuilder> {
  _$SetTodoListTodoAction? _$v;

  ListBuilder<Todo>? _todos;
  ListBuilder<Todo> get todos => _$this._todos ??= new ListBuilder<Todo>();
  set todos(ListBuilder<Todo>? todos) => _$this._todos = todos;

  String? _statusKey;
  String? get statusKey => _$this._statusKey;
  set statusKey(String? statusKey) => _$this._statusKey = statusKey;

  SetTodoListTodoActionBuilder() {
    SetTodoListTodoAction._setDefaults(this);
  }

  SetTodoListTodoActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _todos = $v.todos.toBuilder();
      _statusKey = $v.statusKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SetTodoListTodoAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SetTodoListTodoAction;
  }

  @override
  void update(void Function(SetTodoListTodoActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SetTodoListTodoAction build() {
    _$SetTodoListTodoAction _$result;
    try {
      _$result = _$v ??
          new _$SetTodoListTodoAction._(
              todos: todos.build(),
              statusKey: BuiltValueNullFieldError.checkNotNull(
                  statusKey, 'SetTodoListTodoAction', 'statusKey'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'todos';
        todos.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SetTodoListTodoAction', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$AddItemTodoAction extends AddItemTodoAction {
  @override
  final Todo todo;
  @override
  final String statusKey;

  factory _$AddItemTodoAction(
          [void Function(AddItemTodoActionBuilder)? updates]) =>
      (new AddItemTodoActionBuilder()..update(updates)).build();

  _$AddItemTodoAction._({required this.todo, required this.statusKey})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(todo, 'AddItemTodoAction', 'todo');
    BuiltValueNullFieldError.checkNotNull(
        statusKey, 'AddItemTodoAction', 'statusKey');
  }

  @override
  AddItemTodoAction rebuild(void Function(AddItemTodoActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddItemTodoActionBuilder toBuilder() =>
      new AddItemTodoActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddItemTodoAction &&
        todo == other.todo &&
        statusKey == other.statusKey;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, todo.hashCode), statusKey.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AddItemTodoAction')
          ..add('todo', todo)
          ..add('statusKey', statusKey))
        .toString();
  }
}

class AddItemTodoActionBuilder
    implements Builder<AddItemTodoAction, AddItemTodoActionBuilder> {
  _$AddItemTodoAction? _$v;

  TodoBuilder? _todo;
  TodoBuilder get todo => _$this._todo ??= new TodoBuilder();
  set todo(TodoBuilder? todo) => _$this._todo = todo;

  String? _statusKey;
  String? get statusKey => _$this._statusKey;
  set statusKey(String? statusKey) => _$this._statusKey = statusKey;

  AddItemTodoActionBuilder();

  AddItemTodoActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _todo = $v.todo.toBuilder();
      _statusKey = $v.statusKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddItemTodoAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddItemTodoAction;
  }

  @override
  void update(void Function(AddItemTodoActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AddItemTodoAction build() {
    _$AddItemTodoAction _$result;
    try {
      _$result = _$v ??
          new _$AddItemTodoAction._(
              todo: todo.build(),
              statusKey: BuiltValueNullFieldError.checkNotNull(
                  statusKey, 'AddItemTodoAction', 'statusKey'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'todo';
        todo.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AddItemTodoAction', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
