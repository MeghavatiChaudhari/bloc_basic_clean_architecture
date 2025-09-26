import 'package:dartz/dartz.dart';
import 'package:news_app/features/auth/domain/repositories/user_repository.dart';

import '../../../../core/models/failure.dart';
import '../entities/user.dart';

class GetUserUseCase {
   final UserRepository _repository;

  GetUserUseCase(this._repository);
   Future<Either<Failure, List<User>>> call()=> _repository.getUsers();
}