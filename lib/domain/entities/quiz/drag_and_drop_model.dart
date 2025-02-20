import 'quiz_model.dart';

class DragAndDropQuestion extends Question {
  final List<String> items;
  final List<String> correctOrder;

  DragAndDropQuestion({
    required super.id,
    required super.questionText,
    required this.items,
    required this.correctOrder,
  });

  factory DragAndDropQuestion.fromJson(Map<String, dynamic> json) {
    return DragAndDropQuestion(
      id: json['id'],
      questionText: json['questionText'],
      items: List<String>.from(json['items']),
      correctOrder: List<String>.from(json['correctOrder']),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': 'drag_and_drop',
      'questionText': questionText,
      'items': items,
      'correctOrder': correctOrder,
    };
  }
}
