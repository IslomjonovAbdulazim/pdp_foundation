import 'quiz_model.dart';

class CheckboxQuestion extends Question {
  final List<String> options;
  final List<int> correctOptionIndexes;

  CheckboxQuestion({
    required super.id,
    required super.questionText,
    required this.options,
    required this.correctOptionIndexes,
  });

  factory CheckboxQuestion.fromJson(Map<String, dynamic> json) {
    return CheckboxQuestion(
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
