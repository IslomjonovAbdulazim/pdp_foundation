import 'checkbox_question_model.dart';
import 'code_completion_question_model.dart';
import 'code_output_prediction_question_model.dart';
import 'fill_in_blank_question_model.dart';
import 'multiple_choice_question_model.dart';
import 'true_false_question_model.dart';

abstract class QuestionModel {
  final int id;
  final String questionText;
  final String type;

  QuestionModel({
    required this.id,
    required this.questionText,
    required this.type,
  });

  factory QuestionModel.fromJson(Map<String, dynamic> json) {
    switch (json['type']) {
      case 'mcq':
        return MCQQuestionModel.fromJson(json);
      case 'checkbox':
        return CheckboxQuestionModel.fromJson(json);
      case 'fill_in_the_blank':
        return FillInTheBlankQuestionModel.fromJson(json);
      case 'true_false':
        return TrueFalseQuestionModel.fromJson(json);
      case 'code_output':
        return CodeOutputPredictionQuestionModel.fromJson(json);
      case 'code_completion':
        return CodeCompletionQuestionModel.fromJson(json);
      default:
        throw Exception('Unknown question type');
    }
  }

  Map<String, dynamic> toJson();
}
