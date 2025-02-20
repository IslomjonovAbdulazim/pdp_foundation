import 'question_model.dart';

class MCQQuestionModel extends QuestionModel {
  final List<String> options;
  final int correctOptionIndex;

  MCQQuestionModel({
    required super.id,
    required super.questionText,
    required this.options,
    required this.correctOptionIndex,
  });

  factory MCQQuestionModel.fromJson(Map<String, dynamic> json) {
    return MCQQuestionModel(
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
