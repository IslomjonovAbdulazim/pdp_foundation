// lib/app/data/providers/api_client.dart

import 'package:dio/dio.dart';
import 'package:pdp_foundation/app/data/models/study/quiz_model.dart';
import 'package:retrofit/retrofit.dart';

import '../../../utils/constants/api_constants.dart';
import '../models/study/document_model.dart';
import '../models/study/theme_model.dart';
import '../models/study/topic_model.dart';

part 'study_api_client.g.dart';

@RestApi(baseUrl: ApiConstants.baseURL)
abstract class StudyApiClient {
  factory StudyApiClient(Dio dio, {String baseUrl}) = _StudyApiClient;

  @GET(ApiConstants.themeList)
  Future<List<ThemeModel>> getThemes();

  @GET(ApiConstants.topicList)
  Future<List<TopicModel>> getTopics(
    @Path("theme_id") int themeId,
  );

  @GET(ApiConstants.document)
  Future<List<DocumentModel>> getDocument(
    @Path("document_id") int documentID,
  );

  @GET(ApiConstants.quiz)
  Future<List<QuizModel>> getQuiz(
    @Path("topic_id") int topicID,
  );
}
