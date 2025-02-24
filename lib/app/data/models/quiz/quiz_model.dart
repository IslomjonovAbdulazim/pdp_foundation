import 'package:pdp_foundation/app/data/models/quiz/checkbox_question_model.dart';
import 'package:pdp_foundation/app/data/models/quiz/question_model.dart';
import 'package:pdp_foundation/app/data/models/quiz/true_false_question_model.dart';

import 'code_completion_question_model.dart';
import 'code_output_prediction_question_model.dart';
import 'drag_and_drop_question_model.dart';
import 'fill_in_blank_question_model.dart';
import 'multiple_choice_question_model.dart';

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
    mockCheckbox, // Checkbox Question
    mockCodeOutput, // Code Output Prediction Question
    mockCodeCompletion, // Code Completion Question
    mockDragAndDrop, // Drag and Drop Question
    mockFillInTheBlank, // Fill in the Blank Question
    mockMCQ, // Multiple Choice Question
    mockTrueFalse, // True/False Question
  ],
);
