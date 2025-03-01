import 'code_completion_question_model.dart';
import 'code_output_prediction_question_model.dart';
import 'fill_in_blank_question_model.dart';
import 'multiple_choice_question_model.dart';
import 'question_model.dart';

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

QuizModel mockQuiz = QuizModel(
  id: 1,
  questions: [
    mockCodeOutput, // Code Output Prediction Question
    mockCodeCompletion, // Code Completion Question
    mockFillInTheBlank, // Fill in the Blank Question
    mockMCQ, // Multiple Choice Question
  ],
);
