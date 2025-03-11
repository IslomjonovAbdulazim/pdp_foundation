import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pdp_foundation/domain/entities/study/quiz_result_response_entity.dart';

part 'quiz_result_response_model.freezed.dart';
part 'quiz_result_response_model.g.dart';

@freezed
class QuizResultResponseModel with _$QuizResultResponseModel {
  const factory QuizResultResponseModel({
    @JsonKey(name: "earned_points") required double earnedPoints,
  }) = _QuizResultResponseModel;

  factory QuizResultResponseModel.fromJson(Map<String, dynamic> json) => _$QuizResultResponseModelFromJson(json);
}

extension QuizResultResponseModelX on QuizResultResponseModel {
  QuizResultResponseEntity toEntity() => QuizResultResponseEntity(earnedPoints);
}
