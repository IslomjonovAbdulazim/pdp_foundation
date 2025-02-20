import 'checkbox_model.dart';
import 'code_completion_model.dart';
import 'code_output_prediction_model.dart';
import 'fill_in_blank_model.dart';
import 'multiple_choice_question_model.dart';
import 'true_false_model.dart';

abstract class Question {
  final int id;
  final String questionText;

  Question({required this.id, required this.questionText});

  factory Question.fromJson(Map<String, dynamic> json) {
    switch (json['type']) {
      case 'mcq':
        return MCQQuestion.fromJson(json);
      case 'checkbox':
        return CheckboxQuestion.fromJson(json);
      case 'fill_in_the_blank':
        return FillInTheBlankQuestion.fromJson(json);
      case 'true_false':
        return TrueFalseQuestion.fromJson(json);
      case 'code_output':
        return CodeOutputQuestion.fromJson(json);
      case 'code_completion':
        return CodeCompletionQuestion.fromJson(json);
      default:
        throw Exception('Unknown question type');
    }
  }

  Map<String, dynamic> toJson();
}
