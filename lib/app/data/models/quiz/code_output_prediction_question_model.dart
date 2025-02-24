import 'question_model.dart';

class CodeOutputPredictionQuestionModel extends QuestionModel {
  final String codeSnippet;
  final String correctOutput;
  final String language;

  CodeOutputPredictionQuestionModel({
    required super.id,
    required super.questionText,
    required this.codeSnippet,
    required this.correctOutput,
    required super.type,
    required this.language,
  });

  factory CodeOutputPredictionQuestionModel.fromJson(
      Map<String, dynamic> json) {
    return CodeOutputPredictionQuestionModel(
      id: json['id'],
      questionText: json['questionText'],
      codeSnippet: json['codeSnippet'],
      correctOutput: json['correctOutput'],
      type: json["type"],
      language: json["language"],
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

CodeOutputPredictionQuestionModel mockCodeOutput =
    CodeOutputPredictionQuestionModel(
  id: 1,
  type: 'code_output',
  questionText: 'What will be the output of the following JavaScript code?',
  codeSnippet: '''
  console.log(2 + '2');
  console.log(2 - '2');
  ''',
  correctOutput: '''
  "22"
  0
  ''',
  language: "javascript",
);
