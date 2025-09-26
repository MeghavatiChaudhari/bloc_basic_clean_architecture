import 'package:equatable/equatable.dart';
import 'package:news_app/features/news_trial/data/model/news_response_model.dart';

class NewsEntity extends Equatable {
  final NewsResponseModel newsResponseModel;

  const NewsEntity(this.newsResponseModel);
  @override
  List<Object?> get props => [newsResponseModel];
}
