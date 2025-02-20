import 'quiz_model.dart';

class TrueFalseQuestion extends Question {
  final bool correctAnswer;

  TrueFalseQuestion({
    required super.id,
    required super.questionText,
    required this.correctAnswer,
  });

  factory TrueFalseQuestion.fromJson(Map<String, dynamic> json) {
    return TrueFalseQuestion(
      id: json['id'],
      questionText: json['questionText'],
      correctAnswer: json['correctAnswer'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': 'true_false',
      'questionText': questionText,
      'correctAnswer': correctAnswer,
    };
  }
}
