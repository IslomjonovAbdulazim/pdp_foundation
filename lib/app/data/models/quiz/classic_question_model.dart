import 'question_model.dart';

class ClassicQuestionModel extends QuestionModel {
  final String correctAnswer;
  final List<String> options;

  ClassicQuestionModel({
    required super.id,
    required super.questionText,
    required this.correctAnswer,
    required this.options,
    required super.type,
  });

  factory ClassicQuestionModel.fromJson(Map<String, dynamic> json) {
    return ClassicQuestionModel(
      id: json['id'],
      questionText: json['questionText'],
      correctAnswer: json['correctAnswer'],
      options: List<String>.from(json['options']),
      type: json["type"],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': 'code_completion',
      'questionText': questionText,
      'correctAnswer': correctAnswer,
      'options': options,
    };
  }
}

ClassicQuestionModel mockClassicQuestion = ClassicQuestionModel(
  id: 1,
  type: 'classic',
  questionText:
  'What will be the correct syntax to declare a JavaScript function?',
  correctAnswer: 'function myFunction() { }',
  options: [
    'function = myFunction() { }',
    'def myFunction() { }',
    'function myFunction() { }',
    'func myFunction() { }'
  ],
);
