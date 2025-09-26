import 'package:get_it/get_it.dart';
import 'package:news_app/features/auth/data/datasources/user_datasource.dart';
import 'package:news_app/features/auth/data/datasources/user_datasource_impl.dart';
import 'package:news_app/features/auth/data/repositories/user_repository_impl.dart';
import 'package:news_app/features/auth/domain/repositories/user_repository.dart';
import 'package:news_app/features/auth/domain/usecases/get_user_usecase.dart';

import '../features/auth/presentation/bloc/user_bloc.dart';

final locator = GetIt.instance;

class Injection {
  static init() {
    // final dio = Dio();
    // final remoteDataSource = NewsRemoteDataSource(
    //     dio: dio, apiKey: 'fd0f7178e1ce49e2af36326651a6cab5');
    // final repository = NewsRepositoryImpl(remoteDataSource);
    // final useCase = GetTopHeadlinesUseCase(repository);

    /// data source
    locator.registerLazySingleton<UserDataSource>(() => UserDataSourceImpl());

    /// Repository
    locator.registerLazySingleton<UserRepository>(
        () => UserRepositoryImpl(locator()));

    /// Usecases
    locator
        .registerLazySingleton<GetUserUseCase>(() => GetUserUseCase(locator()));
  }

  static UserBloc get userBloc => UserBloc(locator());
}
