import 'package:equatable/equatable.dart';

abstract class NewsEvent extends Equatable {
  const NewsEvent();

  @override
  List<Object?> get props => [];
}

class LoadTopHeadlines extends NewsEvent {
  final String country;

  const LoadTopHeadlines({this.country = 'us'});

  @override
  List<Object?> get props => [country];
}
