import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:news_app/core/models/failure.dart';
import 'package:news_app/features/news_trial/data/datasources/news_data_source.dart';
import 'package:news_app/features/news_trial/data/model/news_response_model.dart';
import 'package:news_app/features/news_trial/domain/entities/news_entity.dart';

class NewsDataSourceImpl extends NewsDataSource {
  final Dio dio;
  final String apiKey;
  NewsDataSourceImpl({required this.dio, required this.apiKey});

  @override
  Future<Either<Failure, NewsEntity>> getNews({String country = 'us'}) async {
    try {
      final response = await dio.get(
        'https://newsapi.org/v2/top-headlines',
        queryParameters: {
          'country': country,
          'apiKey': apiKey,
        },
      );

      if (response.statusCode == 200) {
        final newsResponseModel = NewsResponseModel.fromJson(response.data);
        final newsEntity = NewsEntity(newsResponseModel);
        return Right(newsEntity);
      } else {
        return Left(Failure(
            message: 'Failed with status code: ${response.statusCode}'));
      }
    } on DioException catch (e) {
      return Left(Failure(message: e.message ?? 'Dio error occurred'));
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }
}
