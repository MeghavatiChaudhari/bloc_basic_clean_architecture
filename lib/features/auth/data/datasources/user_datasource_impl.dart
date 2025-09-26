import 'package:dartz/dartz.dart';
import 'package:news_app/core/models/failure.dart';
import 'package:news_app/features/auth/data/datasources/user_datasource.dart';
import 'package:news_app/features/auth/data/models/user_model.dart';
import 'package:news_app/features/auth/domain/entities/user.dart';

class UserDataSourceImpl extends UserDataSource {
  @override
  Future<Either<Failure, List<User>>> getUsers() async {
    final body = [
      {
        'id' : 12,
        "name": 'Akash'
      },
      {
        'id' : 13,
        "name": 'Akash 13'
      },
      {
        'id' : 14,
        "name": 'Akash 14'
      },
    ];
    final users = List<User>.from( body.map((e) => UserModel.fromJson(e)));
    return Right(users);
  }

}