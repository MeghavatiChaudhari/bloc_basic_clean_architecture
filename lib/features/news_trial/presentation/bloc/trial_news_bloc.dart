import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/features/news_trial/domain/usecases/get_news_usecase.dart';
import 'package:news_app/features/news_trial/presentation/bloc/trial_news_event.dart';
import 'package:news_app/features/news_trial/presentation/bloc/trial_news_state.dart';

class TrialNewsBloc extends Bloc<TrialNewsEvent, TrialNewsState> {
  TrialNewsBloc(this._getNewsUseCase) : super(const TrialNewsState()) {
    on<GetNewsEvent>(_getNews);
  }

  final GetNewsUseCase _getNewsUseCase;

  FutureOr<void> _getNews(
      TrialNewsEvent event, Emitter<TrialNewsState> emit) async {
    emit(state.copyWith(isLoading: true));
    final result = await _getNewsUseCase();
    result.fold((l) {
      emit(state.copyWith(isLoading: false, errorMessage: l.message));
    }, (r) {
      emit(state.copyWith(isLoading: false, news: r));
    });
  }
}
