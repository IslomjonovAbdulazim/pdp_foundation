import 'question_model.dart';

class FillInTheBlankQuestionModel extends QuestionModel {
  final String codeSnippet;
  final String correctAnswer;

  FillInTheBlankQuestionModel({
    required super.id,
    required super.questionText,
    required this.correctAnswer,
    required this.codeSnippet,
    required super.type,
  });

  factory FillInTheBlankQuestionModel.fromJson(Map<String, dynamic> json) {
    return FillInTheBlankQuestionModel(
      id: json['id'],
      questionText: json['questionText'],
      correctAnswer: json['correctAnswer'],
      codeSnippet: json["codeSnippet"],
      type: json["type"],
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

FillInTheBlankQuestionModel mockFillInTheBlank = FillInTheBlankQuestionModel(
  id: 1,
  type: 'fill_in_the_blank',
  questionText:
      'Fill in the missing keyword to declare a variable in JavaScript.',
  codeSnippet: '''
  ___ myVariable = 10;
  ''',
  correctAnswer: 'let',
);
