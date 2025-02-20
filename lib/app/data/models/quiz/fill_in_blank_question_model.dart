import 'question_model.dart';

class FillInTheBlankQuestionModel extends QuestionModel {
  final String codeSnippet;
  final String correctAnswer;

  FillInTheBlankQuestionModel({
    required super.id,
    required super.questionText,
    required this.correctAnswer,
    required this.codeSnippet,
  });

  factory FillInTheBlankQuestionModel.fromJson(Map<String, dynamic> json) {
    return FillInTheBlankQuestionModel(
      id: json['id'],
      questionText: json['questionText'],
      correctAnswer: json['correctAnswer'],
      codeSnippet: json["codeSnippet"],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': 'fill_in_the_blank',
      'questionText': questionText,
      'correctAnswer': correctAnswer,
      'codeSnippet': codeSnippet,
    };
  }
}
