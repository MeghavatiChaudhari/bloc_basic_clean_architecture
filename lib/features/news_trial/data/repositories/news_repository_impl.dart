import 'package:dartz/dartz.dart';
import 'package:news_app/core/models/failure.dart';
import 'package:news_app/features/news_trial/data/datasources/news_data_source.dart';
import 'package:news_app/features/news_trial/domain/entities/news_entity.dart';
import 'package:news_app/features/news_trial/domain/repositories/trial_news_repository.dart';

class NewsRepositoryImpl implements TrialNewsRepository {
  final NewsDataSource _newsDataSource;

  NewsRepositoryImpl(this._newsDataSource);

  @override
  Future<Either<Failure, NewsEntity>> getNews({String country = 'us'}) =>
      _newsDataSource.getNews(country: country);
}
