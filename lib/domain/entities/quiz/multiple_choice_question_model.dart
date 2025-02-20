import 'quiz_model.dart';

class MCQQuestion extends Question {
  final List<String> options;
  final int correctOptionIndex;

  MCQQuestion({
    required super.id,
    required super.questionText,
    required this.options,
    required this.correctOptionIndex,
  });

  factory MCQQuestion.fromJson(Map<String, dynamic> json) {
    return MCQQuestion(
      id: json['id'],
      questionText: json['questionText'],
      options: List<String>.from(json['options']),
      correctOptionIndex: json['correctOptionIndex'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': 'mcq',
      'questionText': questionText,
      'options': options,
      'correctOptionIndex': correctOptionIndex,
    };
  }
}
