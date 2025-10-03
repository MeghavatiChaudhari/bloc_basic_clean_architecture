import 'package:equatable/equatable.dart';
import 'package:news_app/features/news_trial/domain/entities/news_entity.dart';

class TrialNewsState extends Equatable {
  final NewsEntity? news;
  final bool isLoading;
  final String? errorMessage;

  const TrialNewsState({
    this.news,
    this.isLoading = false,
    this.errorMessage,
  });

  TrialNewsState copyWith(
      {NewsEntity? news, bool? isLoading, String? errorMessage}) {
    return TrialNewsState(
        news: news ?? this.news,
        isLoading: isLoading ?? this.isLoading,
        errorMessage: errorMessage ?? this.errorMessage);
  }

  @override
  List<Object?> get props => [news, isLoading, errorMessage];
}
