import 'package:dartz/dartz.dart';
import 'package:news_app/core/models/failure.dart';
import 'package:news_app/features/news_trial/domain/entities/news_entity.dart';

abstract class TrialNewsRepository {
  Future<Either<Failure, NewsEntity>> getNews({String country = 'us'});
}
