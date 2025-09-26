import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/features/news/domain/usecases/get_top_headlines.dart';
import 'package:news_app/features/news/presentation/blocs/news_event.dart';
import 'package:news_app/features/news/presentation/blocs/news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  final GetTopHeadlinesUseCase getTopHeadlinesUseCase;
  NewsBloc(this.getTopHeadlinesUseCase) : super(NewsInitial()) {
    on<LoadTopHeadlines>((event, emit) async {
      emit(NewsLoading());

      try {
        final articles = await getTopHeadlinesUseCase(country: event.country);
        emit(NewsLoaded(articles));
      } catch (e) {
        emit(NewsError(e.toString()));
      }
    });
  }
}
