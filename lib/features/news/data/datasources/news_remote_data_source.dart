import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:news_app/features/news/data/models/article_model.dart';

class NewsRemoteDataSource {
  final Dio dio;
  final String apiKey;

  NewsRemoteDataSource({required this.dio, required this.apiKey});

  Future<List<Article>> getTopHeadlines({String country = 'us'}) async {
    final response =
        await dio.get('https://newsapi.org/v2/top-headlines', queryParameters: {
      'country': country,
      'apikey': apiKey,
    });

    if (response.statusCode == 200) {
      final List articles = response.data['articles'];
      return articles.map((json) => Article.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load news');
    }
  }
}
