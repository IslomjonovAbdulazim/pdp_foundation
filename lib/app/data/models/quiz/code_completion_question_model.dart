import 'question_model.dart';

class CodeCompletionQuestionModel extends QuestionModel {
  final String codeSnippet;
  final String correctAnswer;
  final String language;
  final List<String> options;

  CodeCompletionQuestionModel({
    required super.id,
    required super.questionText,
    required this.codeSnippet,
    required this.correctAnswer,
    required this.options,
    required super.type,
    required this.language,
  });

  factory CodeCompletionQuestionModel.fromJson(Map<String, dynamic> json) {
    return CodeCompletionQuestionModel(
      id: json['id'],
      questionText: json['questionText'],
      codeSnippet: json['codeSnippet'],
      correctAnswer: json['correctAnswer'],
      options: List<String>.from(json['options']),
      type: json["type"],
      language: json["language"],
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
      "language": language,
    };
  }
}

CodeCompletionQuestionModel mockCodeCompletion = CodeCompletionQuestionModel(
  id: 1,
  type: 'code_completion',
  questionText:
      'What will be the correct syntax to declare a JavaScript function?',
  codeSnippet: 'function myFunction() { \n  // ... \n}',
  correctAnswer: 'function myFunction() { }',
  options: [
    'function = myFunction() { }',
    'def myFunction() { }',
    'function myFunction() { }',
    'func myFunction() { }'
  ],
  language: "javascript",
);
