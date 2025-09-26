import 'package:json_annotation/json_annotation.dart';

part 'article_model.g.dart';

@JsonSerializable()
class NewsResponse {
  @JsonKey(name: "status")
  final String status;

  @JsonKey(name: "totalResults")
  final int totalResults;

  @JsonKey(name: "articles")
  final List<Article> articles;

  NewsResponse({
    required this.status,
    required this.totalResults,
    required this.articles,
  });

  factory NewsResponse.fromJson(Map<String, dynamic> json) =>
      _$NewsResponseFromJson(json);
  Map<String, dynamic> toJson() => _$NewsResponseToJson(this);
}

@JsonSerializable()
class Article {
  final Source source;
  final String? author;
  final String title;
  final String? description;
  final String? url;
  final String? urlToImage;
  final DateTime publishedAt;
  final String? content;

  Article({
    required this.source,
    this.author,
    required this.title,
    this.description,
    this.url,
    this.urlToImage,
    required this.publishedAt,
    this.content,
  });

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleToJson(this);
}

@JsonSerializable()
class Source {
  final String? id;
  final String name;

  Source({
    this.id,
    required this.name,
  });

  factory Source.fromJson(Map<String, dynamic> json) => _$SourceFromJson(json);
  Map<String, dynamic> toJson() => _$SourceToJson(this);
}
