import 'classic_question_model.dart';
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
    mockClassicQuestion,
  ],
);

QuizModel mockQuiz2 = QuizModel(
  id: 1,
  questions: [
    CodeOutputPredictionQuestionModel(
      id: 1,
      type: 'code_output',
      questionText: 'What will be the output of the following JavaScript code?',
      codeSnippet: """
        console.log(2 + '2');
        console.log(2 - '2');
      """,
      correctOutput: """
        "22"
        0
      """,
      language: "javascript",
    ),
    CodeCompletionQuestionModel(
      id: 2,
      type: 'code_completion',
      questionText:
          'What will be the correct syntax to declare a JavaScript function?',
      codeSnippet: 'function myFunction() { \n  // ... \n}',
      correctAnswer: 'function myFunction() { }',
      options: [
        'function = myFunction() { }',
        'def myFunction() { }',
        'function myFunction() { }',
        'func myFunction() { }'
      ],
      language: "javascript",
    ),
    FillInTheBlankQuestionModel(
      id: 3,
      type: 'fill_in_the_blank',
      questionText:
          'Fill in the missing keyword to declare a variable in JavaScript.',
      codeSnippet: '___ myVariable = 10;',
      correctAnswer: 'let',
      language: "javascript",
    ),
    MCQQuestionModel(
      id: 4,
      type: 'mcq',
      questionText: 'Which of the following is not a JavaScript data type?',
      options: ['String', 'Boolean', 'Float', 'Undefined'],
      correctOptionIndex: 2,
    ),
    ClassicQuestionModel(
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
    ),
  ],
);
