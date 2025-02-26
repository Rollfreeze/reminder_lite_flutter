sealed class Result<T> {}

final class Success<T> extends Result<T> {
  final T result;

  Success(this.result);
}

final class Failure<T> extends Result<T> {
  final String error;

  Failure(this.error);
}
