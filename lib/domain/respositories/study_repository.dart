import 'package:dartz/dartz.dart';
import 'package:pdp_foundation/domain/entities/study/quiz_entity.dart';
import 'package:pdp_foundation/domain/entities/study/quiz_result_entity.dart';
import 'package:pdp_foundation/domain/entities/study/quiz_result_response_entity.dart';

import '../../app/data/models/study/quiz_result_model.dart';
import '../../utils/errors/network_failure.dart';
import '../entities/study/article_entity.dart';
import '../entities/study/themes_entity.dart';
import '../entities/study/topic_entity.dart';

abstract class StudyRepository {
  Future<Either<NetworkFailure, List<ThemeEntity>>> themes();

  Future<Either<NetworkFailure, List<TopicEntity>>> topics(int themeID);

  Future<Either<NetworkFailure, List<ArticleContentEntity>>> document(
    int documentID,
  );

  Future<Either<NetworkFailure, List<QuizEntity>>> quiz(int topicID);

  Future<Either<NetworkFailure, QuizResultResponseEntity>> quizResult(QuizResultModel result);
}
