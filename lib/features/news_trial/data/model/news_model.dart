import 'package:news_app/features/news_trial/data/model/article_model.dart';
import 'package:news_app/features/news_trial/domain/entities/news_entity.dart';

class NewsModel extends NewsEntity {
  @override
  final List<ArticleModel> articles;
  const NewsModel(
      {required super.status,
      required super.totalResults,
      required this.articles})
      : super(articles: articles);

  factory NewsModel.fromJson(Map<String, dynamic> json) => NewsModel(
      status: json['status'],
      totalResults: json['totalResults'],
      articles: json['articles']);
}
