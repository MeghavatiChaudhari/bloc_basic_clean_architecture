import 'package:equatable/equatable.dart';

class Failure extends Equatable {
  final String? message;
  final int? statusCode;

  const Failure({ this.message,  this.statusCode});

  @override
  List<Object?> get props => [message, statusCode];
}