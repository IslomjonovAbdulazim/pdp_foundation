import 'question_model.dart';

class CodeCompletionQuestionModel extends QuestionModel {
  final String codeSnippet;
  final String correctAnswer;
  final List<String> options;

  CodeCompletionQuestionModel({
    required super.id,
    required super.questionText,
    required this.codeSnippet,
    required this.correctAnswer,
    required this.options,
  });

  factory CodeCompletionQuestionModel.fromJson(Map<String, dynamic> json) {
    return CodeCompletionQuestionModel(
      id: json['id'],
      questionText: json['questionText'],
      codeSnippet: json['codeSnippet'],
      correctAnswer: json['correctAnswer'],
      options: List<String>.from(json['options']),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': 'code_completion',
      'questionText': questionText,
      'codeSnippet': codeSnippet,
      'correctAnswer': correctAnswer,
      'options': options,
    };
  }
}
