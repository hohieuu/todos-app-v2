import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'status.g.dart';

enum LoadingStatus { idle, loading, success, error }

abstract class Status implements Built<Status, StatusBuilder> {
  LoadingStatus get loading;
  String get message;

  factory Status.idle() => Status(
        (updates) => updates
          ..message = ''
          ..loading = LoadingStatus.idle,
      );

  factory Status.success({String? message}) => Status(
        (updates) => updates
          ..message = message ?? ''
          ..loading = LoadingStatus.success,
      );

  factory Status.error({String? message}) => Status(
        (updates) => updates
          ..message = message ?? ''
          ..loading = LoadingStatus.error,
      );

  factory Status.loading({String? message}) => Status(
        (updates) => updates
          ..message = message ?? ''
          ..loading = LoadingStatus.loading,
      );

  Status._();
  factory Status([void Function(StatusBuilder) updates]) = _$Status;
}
