abstract class DataState<T> {
  const DataState({this.data, this.failure});

  final T? data;
  final Failure? failure;
}

class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T? data) : super(data: data);
}

class DataFailed<T> extends DataState<T> {
  const DataFailed(Failure failure) : super(failure: failure);
}

abstract class Failure {
  Failure({
    required this.errorMessage,
    this.statusCOde,
  });
  int? statusCOde;
  String errorMessage;
}

class ExceptionFailure extends Failure {
  ExceptionFailure({
    required this.message,
    this.statusCode,
  }) : super(errorMessage: message, statusCOde: statusCode);
  final int? statusCode;
  final String message;
}

class CacheFailure extends Failure {
  CacheFailure({
    required this.message,
    this.statusCode,
  }) : super(errorMessage: message, statusCOde: statusCode);
  final int? statusCode;

  final String message;
}

class ServerFailure extends Failure {
  ServerFailure({this.serverErrorMsg, this.statusCode})
      : super(errorMessage: serverErrorMsg ?? 'error', statusCOde: statusCode);
  final int? statusCode;
  final String? serverErrorMsg;
}
