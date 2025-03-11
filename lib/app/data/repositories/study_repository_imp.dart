import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:pdp_foundation/app/data/models/study/quiz_result_model.dart';
import 'package:pdp_foundation/app/data/models/study/quiz_result_response_model.dart';
import 'package:pdp_foundation/domain/entities/study/quiz_result_entity.dart';
import 'package:pdp_foundation/domain/entities/study/quiz_result_response_entity.dart';
import 'package:pdp_foundation/utils/services/token_service.dart';

import '../../../domain/entities/study/article_entity.dart';
import '../../../domain/entities/study/quiz_entity.dart';
import '../../../domain/entities/study/themes_entity.dart';
import '../../../domain/entities/study/topic_entity.dart';
import '../../../domain/respositories/study_repository.dart';
import '../../../utils/constants/api_constants.dart';
import '../../../utils/errors/network_failure.dart';
import '../models/study/document_model.dart';
import '../models/study/quiz_model.dart';
import '../models/study/theme_model.dart';
import '../models/study/topic_model.dart';
import '../providers/study_api_client.dart';

class StudyRepositoryImp extends StudyRepository {
  final StudyApiClient apiClient;

  StudyRepositoryImp({Dio? dio})
      : apiClient = StudyApiClient(
          dio ??
              Dio(BaseOptions(
                baseUrl: ApiConstants.baseURL,
                connectTimeout: const Duration(seconds: 30),
                receiveTimeout: const Duration(seconds: 30),
              )),
        );

  @override
  Future<Either<NetworkFailure, List<ThemeEntity>>> themes() async {
    try {
      final themes = await apiClient.getThemes(TokenService.to.token);
      return Right(themes.map((model) => model.toEntity()).toList());
    } on DioException catch (e) {
      return Left(
        NetworkFailure(
          message: e.response?.statusMessage,
          statusCode: e.response?.statusCode,
        ),
      );
    }
  }

  @override
  Future<Either<NetworkFailure, List<TopicEntity>>> topics(int themeID) async {
    try {
      final topics = await apiClient.getTopics(themeID, TokenService.to.token);
      return Right(topics.map((model) => model.toEntity()).toList());
    } on DioException catch (e) {
      return Left(
        NetworkFailure(
          message: e.response?.statusMessage,
          statusCode: e.response?.statusCode,
        ),
      );
    }
  }

  @override
  Future<Either<NetworkFailure, List<ArticleContentEntity>>> document(
      int documentID) async {
    try {
      final documents = await apiClient.getDocument(documentID, TokenService.to.token);
      return Right(documents.map((model) => model.toEntity()).toList());
    } on DioException catch (e) {
      return Left(
        NetworkFailure(
          message: e.response?.statusMessage,
          statusCode: e.response?.statusCode,
        ),
      );
    }
  }

  @override
  Future<Either<NetworkFailure, List<QuizEntity>>> quiz(int topicID) async {
    try {
      final quiz = await apiClient.getQuiz(topicID, TokenService.to.token);
      return Right(quiz.map((model) => model.toEntity()).toList());
    } on DioException catch (e) {
      return Left(
        NetworkFailure(
          message: e.response?.statusMessage,
          statusCode: e.response?.statusCode,
        ),
      );
    }
  }

  @override
  Future<Either<NetworkFailure, QuizResultResponseEntity>> quizResult(QuizResultModel result)async  {
    try {
      final quiz = await apiClient.quizResult(result, TokenService.to.token);
      return Right(quiz.toEntity());
    } on DioException catch (e) {
      return Left(
        NetworkFailure(
          message: e.response?.statusMessage,
          statusCode: e.response?.statusCode,
        ),
      );
    }
  }
}
