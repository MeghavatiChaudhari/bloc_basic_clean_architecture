import 'package:dartz/dartz.dart';

import '../../../../core/models/failure.dart';
import '../../domain/entities/user.dart';

abstract class UserDataSource {
  Future<Either<Failure, List<User>>> getUsers();
}

