import 'package:news_app/features/news_trial/domain/entities/news_source_entity.dart';

class NewsSourceModel extends NewsSource {
  const NewsSourceModel({
    required super.id,
    required super.name,
  });

  factory NewsSourceModel.fromJson(Map<String, dynamic> json) =>
      NewsSourceModel(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
