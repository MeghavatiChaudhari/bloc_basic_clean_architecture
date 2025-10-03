import 'package:dartz/dartz.dart';
import 'package:news_app/core/models/failure.dart';
import 'package:news_app/features/news_trial/domain/entities/news_entity.dart';
import 'package:news_app/features/news_trial/domain/repositories/trial_news_repository.dart';

class GetNewsUseCase {
  final TrialNewsRepository _trialNewsRepository;

  GetNewsUseCase(this._trialNewsRepository);

  Future<Either<Failure, NewsEntity>> call() => _trialNewsRepository.getNews();
}
