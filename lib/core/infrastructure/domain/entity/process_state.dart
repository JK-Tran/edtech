import 'package:edtech/core/exception/base/app_exception.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

@Deprecated('outdated. Use class Result instead')
@immutable
class ProcessState<T> {
  @Deprecated('outdated. Use class Result instead')
  const ProcessState._({
    this.data,
    this.exception,
  }) : assert(
          data != null || exception != null,
          'Either data or exception must be provided',
        );

  @Deprecated('outdated. Use class Result instead')
  const ProcessState.success(T data) : this._(data: data);

  @Deprecated('outdated. Use class Result instead')
  const ProcessState.failure(AppException exception)
      : this._(exception: exception);

  final T? data;
  final AppException? exception;

  @override
  int get hashCode => data.hashCode ^ exception.hashCode;

  bool get isFailure => exception != null;
  bool get isSuccess => data != null;

  void onSuccess(Future<void> Function(T) action) {
    action(data as T);
  }

  void onFailure(Future<void> Function(AppException) action) {
    action(exception!);
  }

  ProcessState<T> copyWith({
    T? data,
    AppException? exception,
  }) {
    return ProcessState<T>._(
      data: data ?? this.data,
      exception: exception ?? this.exception,
    );
  }

  @override
  String toString() => 'ProcessState(data: $data, exception: $exception)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is ProcessState<T> &&
        other.data == data &&
        other.exception == exception;
  }
}
