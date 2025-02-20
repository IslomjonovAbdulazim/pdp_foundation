import 'question_model.dart';

class CheckboxQuestionModel extends QuestionModel {
  final List<String> options;
  final List<int> correctOptionIndexes;

  CheckboxQuestionModel({
    required super.id,
    required super.questionText,
    required this.options,
    required this.correctOptionIndexes,
  });

  factory CheckboxQuestionModel.fromJson(Map<String, dynamic> json) {
    return CheckboxQuestionModel(
      id: json['id'],
      questionText: json['questionText'],
      options: List<String>.from(json['options']),
      correctOptionIndexes: List<int>.from(json['correctOptionIndexes']),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': 'checkbox',
      'questionText': questionText,
      'options': options,
      'correctOptionIndexes': correctOptionIndexes,
    };
  }
}
