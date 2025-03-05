import 'package:dartz/dartz.dart';
import 'package:pdp_foundation/domain/entities/study/quiz_entity.dart';

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
}
