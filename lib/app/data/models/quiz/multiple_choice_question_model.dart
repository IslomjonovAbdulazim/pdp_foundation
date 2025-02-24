import 'question_model.dart';

class MCQQuestionModel extends QuestionModel {
  final List<String> options;
  final int correctOptionIndex;

  MCQQuestionModel({
    required super.id,
    required super.questionText,
    required this.options,
    required this.correctOptionIndex,
    required super.type,
  });

  factory MCQQuestionModel.fromJson(Map<String, dynamic> json) {
    return MCQQuestionModel(
      id: json['id'],
      questionText: json['questionText'],
      options: List<String>.from(json['options']),
      correctOptionIndex: json['correctOptionIndex'],
      type: json["type"],
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

MCQQuestionModel mockMCQ = MCQQuestionModel(
  id: 1,
  type: 'mcq',
  questionText: 'Which of the following is not a JavaScript data type?',
  options: ['String', 'Boolean', 'Float', 'Undefined'],
  correctOptionIndex: 2, // 'Float' is not a JavaScript data type
);
