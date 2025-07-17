abstract class Failure implements Exception {
  final String? message;

  Failure({required this.message});
}

class FetchFailure extends Failure {
  FetchFailure({required super.message});
}

class BadRequest extends Failure {
  BadRequest({required super.message});
}

class Unauthorized extends Failure {
  Unauthorized({required super.message});
}

class Forbidden extends Failure {
  Forbidden({required super.message});
}

class InvalidInput extends Failure {
  InvalidInput({required super.message});
}

class NotFound extends Failure {
  NotFound({required super.message});
}

class ServerFailure extends Failure {
  ServerFailure({required super.message});
}
