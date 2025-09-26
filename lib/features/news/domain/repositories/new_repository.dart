import 'package:news_app/features/news/data/models/article_model.dart';

abstract class NewsRepository {
  Future<List<Article>> getTopHeadlines({String country});
}
