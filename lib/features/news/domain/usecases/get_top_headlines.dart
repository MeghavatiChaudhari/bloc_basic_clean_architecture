import 'package:news_app/features/news/data/models/article_model.dart';
import 'package:news_app/features/news/domain/repositories/new_repository.dart';

class GetTopHeadlinesUseCase {
  final NewsRepository repository;

  GetTopHeadlinesUseCase(this.repository);
  Future<List<Article>> call({String country = 'us'}) {
    return repository.getTopHeadlines(country: country);
  }
}
