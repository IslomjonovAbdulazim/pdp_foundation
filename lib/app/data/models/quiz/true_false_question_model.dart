import 'question_model.dart';

class TrueFalseQuestionModel extends QuestionModel {
  final bool correctAnswer;

  TrueFalseQuestionModel({
    required super.id,
    required super.questionText,
    required this.correctAnswer,
  });

  factory TrueFalseQuestionModel.fromJson(Map<String, dynamic> json) {
    return TrueFalseQuestionModel(
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
