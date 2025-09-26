import 'package:equatable/equatable.dart';

/// Base failure class for all failures in the application
abstract class Failure extends Equatable {
  final String message;
  
  const Failure({required this.message});
  
  @override
  List<Object> get props => [message];
}

/// Server failure when there's an issue with the server
class ServerFailure extends Failure {
  const ServerFailure({required String message}) : super(message: message);
}

/// Network failure when there's an issue with the network
class NetworkFailure extends Failure {
  const NetworkFailure({required String message}) : super(message: message);
}

/// Cache failure when there's an issue with the local cache
class CacheFailure extends Failure {
  const CacheFailure({required String message}) : super(message: message);
}

/// General failure for unexpected errors
class GeneralFailure extends Failure {
  const GeneralFailure({required String message}) : super(message: message);
}