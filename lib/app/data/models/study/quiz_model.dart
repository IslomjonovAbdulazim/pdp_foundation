import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pdp_foundation/domain/entities/study/quiz_entity.dart';
import 'package:pdp_foundation/domain/entities/study/themes_entity.dart';

part 'quiz_model.freezed.dart';
part 'quiz_model.g.dart';

@freezed
class QuizModel with _$QuizModel {
  const factory QuizModel({
    required int id,
    required String question,
    @JsonKey(name: "code_snippet")
    required String codeSnippet,
    required String language,
    required List<String> options,
    required String correct,
  }) = _QuizModel;

  factory QuizModel.fromJson(Map<String, dynamic> json) =>
      _$QuizModelFromJson(json);
}

extension QuizModelX on QuizModel {
  QuizEntity toEntity() => QuizEntity(
    id: id,
    language: language,
    codeSnippet: codeSnippet,
    correct: correct,
    options: options,
    question: question,
  );
}
