import 'package:get_it/get_it.dart';
import 'package:news_app/features/auth/data/datasources/user_datasource.dart';
import 'package:news_app/features/auth/data/datasources/user_datasource_impl.dart';
import 'package:news_app/features/auth/data/repositories/user_repository_impl.dart';
import 'package:news_app/features/auth/domain/repositories/user_repository.dart';
import 'package:news_app/features/auth/domain/usecases/get_user_usecase.dart';
import 'package:news_app/features/news_trial/data/datasources/news_data_source.dart';
import 'package:news_app/features/news_trial/data/datasources/news_data_source_impl.dart';
import 'package:news_app/features/news_trial/domain/repositories/trial_news_repository.dart';

import '../features/auth/presentation/bloc/user_bloc.dart';
import '../features/news_trial/data/repositories/news_repository_impl.dart';
import '../features/news_trial/domain/usecases/get_news_usecase.dart';
import '../features/news_trial/presentation/bloc/trial_news_bloc.dart';

final locator = GetIt.instance;

class Injection {
  static init() {
    // final dio = Dio();
    // final remoteDataSource = NewsRemoteDataSource(
    //     dio: dio, apiKey: 'fd0f7178e1ce49e2af36326651a6cab5');
    // final repository = NewsRepositoryImpl(remoteDataSource);
    // final useCase = GetTopHeadlinesUseCase(repository);

    locator.registerLazySingleton<NewsDataSource>(
        () => NewsDataSourceImpl(apiKey: 'fd0f7178e1ce49e2af36326651a6cab5'));

    locator.registerLazySingleton<TrialNewsRepository>(
        () => NewsRepositoryImpl(locator()));

    locator
        .registerLazySingleton<GetNewsUseCase>(() => GetNewsUseCase(locator()));

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
  static TrialNewsBloc get newsBloc => TrialNewsBloc(locator());
}
