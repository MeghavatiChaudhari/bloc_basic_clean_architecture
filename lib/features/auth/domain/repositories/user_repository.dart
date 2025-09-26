import 'package:dartz/dartz.dart';
import 'package:news_app/features/auth/domain/entities/user.dart';

import '../../../../core/models/failure.dart';

abstract class UserRepository {
  Future<Either<Failure, List<User>>> getUsers();
}
