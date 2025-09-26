import 'package:dartz/dartz.dart';
import 'package:news_app/core/models/failure.dart';
import 'package:news_app/features/auth/data/datasources/user_datasource.dart';
import 'package:news_app/features/auth/domain/entities/user.dart';
import 'package:news_app/features/auth/domain/repositories/user_repository.dart';

class UserRepositoryImpl  implements UserRepository {
  final UserDataSource _userDataSource;

  UserRepositoryImpl(this._userDataSource);
  @override
  Future<Either<Failure, List<User>>> getUsers() => _userDataSource.getUsers();
}