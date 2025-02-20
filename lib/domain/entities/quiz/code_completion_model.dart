import 'quiz_model.dart';

class CodeCompletionQuestion extends Question {
  final String codeSnippet;
  final String correctAnswer;
  final List<String> options;

  CodeCompletionQuestion({
    required super.id,
    required super.questionText,
    required this.codeSnippet,
    required this.correctAnswer,
    required this.options,
  });

  factory CodeCompletionQuestion.fromJson(Map<String, dynamic> json) {
    return CodeCompletionQuestion(
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
