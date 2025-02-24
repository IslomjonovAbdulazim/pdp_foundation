import 'question_model.dart';

class TrueFalseQuestionModel extends QuestionModel {
  final bool correctAnswer;

  TrueFalseQuestionModel({
    required super.id,
    required super.questionText,
    required this.correctAnswer,
    required super.type,
  });

  factory TrueFalseQuestionModel.fromJson(Map<String, dynamic> json) {
    return TrueFalseQuestionModel(
      id: json['id'],
      questionText: json['questionText'],
      correctAnswer: json['correctAnswer'],
      type: json["type"],
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

TrueFalseQuestionModel mockTrueFalse = TrueFalseQuestionModel(
  id: 1,
  type: 'true_false',
  questionText: 'JavaScript is a statically typed language.',
  correctAnswer: false,
);
