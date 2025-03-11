import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pdp_foundation/domain/entities/study/quiz_result_entity.dart';

part 'quiz_result_model.freezed.dart';
part 'quiz_result_model.g.dart';

@freezed
class QuizResultModel with _$QuizResultModel {
  const factory QuizResultModel({
    @JsonKey(name: "topic_id") required int topicID,
    required List<int> corrects,
    required List<int> wrongs,
    required DateTime start,
    required DateTime end,
  }) = _QuizResultModel;

  factory QuizResultModel.fromJson(Map<String, dynamic> json) => _$QuizResultModelFromJson(json);
}

extension QuizResultModelX on QuizResultModel {
  QuizResultEntity toEntity() => QuizResultEntity(
    topicID: topicID,
    corrects: corrects,
    wrongs: wrongs,
    start: start,
    end: end,
  );
}
