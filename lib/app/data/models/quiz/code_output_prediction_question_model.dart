import 'question_model.dart';

class CodeOutputPredictionQuestionModel extends QuestionModel {
  final String codeSnippet;
  final String correctOutput;

  CodeOutputPredictionQuestionModel({
    required super.id,
    required super.questionText,
    required this.codeSnippet,
    required this.correctOutput,
  });

  factory CodeOutputPredictionQuestionModel.fromJson(Map<String, dynamic> json) {
    return CodeOutputPredictionQuestionModel(
      id: json['id'],
      questionText: json['questionText'],
      codeSnippet: json['codeSnippet'],
      correctOutput: json['correctOutput'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': 'code_output',
      'questionText': questionText,
      'codeSnippet': codeSnippet,
      'correctOutput': correctOutput,
    };
  }
}
