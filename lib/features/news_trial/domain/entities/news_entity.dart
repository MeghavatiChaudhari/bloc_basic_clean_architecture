import 'package:equatable/equatable.dart';

import 'article_entity.dart';

class NewsEntity extends Equatable {
  final String status;
  final int totalResults;
  final List<Article> articles;

  const NewsEntity(
      {required this.status,
      required this.totalResults,
      required this.articles});
  @override
  List<Object?> get props => [
        status,
        totalResults,
        articles,
      ];
}
