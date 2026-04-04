sealed class Result<T> {}

final class Success<T> extends Result<T> {
  Success(this.result);
  final T result;
}

final class Failure<T> extends Result<T> {
  Failure(this.error);
  final String error;
}
