import 'package:pdp_foundation/app/data/models/quiz/question_model.dart';

class QuizModel {
  late int id;
  late List<QuestionModel> questions;

  QuizModel({
    required this.id,
    required this.questions,
  });

  QuizModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    questions = List.from(json["questions"])
        .map(
          (json) => QuestionModel.fromJson(json),
        )
        .toList();
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "questions": questions.map((ques) => ques.toJson()).toList(),
      };

  @override
  String toString() {
    return toJson().toString();
  }
}
