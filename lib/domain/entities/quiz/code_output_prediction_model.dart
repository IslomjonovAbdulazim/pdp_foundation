import 'quiz_model.dart';

class CodeOutputQuestion extends Question {
  final String codeSnippet;
  final String correctOutput;

  CodeOutputQuestion({
    required super.id,
    required super.questionText,
    required this.codeSnippet,
    required this.correctOutput,
  });

  factory CodeOutputQuestion.fromJson(Map<String, dynamic> json) {
    return CodeOutputQuestion(
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
