import 'question_model.dart';

class DragAndDropQuestionModel extends QuestionModel {
  final List<String> items;
  final List<String> correctOrder;

  DragAndDropQuestionModel({
    required super.id,
    required super.questionText,
    required this.items,
    required this.correctOrder,
    required super.type,
  });

  factory DragAndDropQuestionModel.fromJson(Map<String, dynamic> json) {
    return DragAndDropQuestionModel(
      id: json['id'],
      questionText: json['questionText'],
      items: List<String>.from(json['items']),
      correctOrder: List<String>.from(json['correctOrder']),
      type: json["type"],
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

DragAndDropQuestionModel mockDragAndDrop = DragAndDropQuestionModel(
  id: 1,
  type: 'drag_and_drop',
  questionText:
      'Arrange the steps of the CSS box model from innermost to outermost.',
  items: ['Margin', 'Padding', 'Content', 'Border'],
  correctOrder: ['Content', 'Padding', 'Border', 'Margin'],
);
