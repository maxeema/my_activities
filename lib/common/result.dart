//

class Result<E, S> {
  const Result._({this.error, this.success}) : assert(error != null || success != null);
  final Object? error;
  final S? success;

  bool get isSuccess => success != null;

  bool get isError => error != null;

  factory Result.fromSuccess(S success) => Result._(success: success);

  factory Result.fromError(Object error) => Result._(error: error);
}
