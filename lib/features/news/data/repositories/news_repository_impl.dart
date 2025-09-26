import 'package:news_app/features/news/data/datasources/news_remote_data_source.dart';
import 'package:news_app/features/news/data/models/article_model.dart';
import 'package:news_app/features/news/domain/repositories/new_repository.dart';

class NewsRepositoryImpl implements NewsRepository {
  final NewsRemoteDataSource remoteDataSource;
  NewsRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<Article>> getTopHeadlines({String country = 'us'}) {
    return remoteDataSource.getTopHeadlines(country: country);
  }
}
