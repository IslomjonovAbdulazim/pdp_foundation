import 'quiz_model.dart';

class FillInTheBlankQuestion extends Question {
  final String codeSnippet;
  final String correctAnswer;

  FillInTheBlankQuestion({
    required super.id,
    required super.questionText,
    required this.correctAnswer,
    required this.codeSnippet,
  });

  factory FillInTheBlankQuestion.fromJson(Map<String, dynamic> json) {
    return FillInTheBlankQuestion(
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
