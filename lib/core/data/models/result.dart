import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
class Result<T> with _$Result<T> {
  const factory Result.success({required T result}) = Success;
  const factory Result.failure({required String error}) = Failure;
}
