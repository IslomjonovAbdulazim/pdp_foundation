// import 'package:flutter/material.dart';
// // Import your models
// import 'checkbox_question_model.dart';
// import 'code_completion_question_model.dart';
// import 'code_output_prediction_question_model.dart';
// import 'drag_and_drop_question_model.dart';
// import 'fill_in_the_blank_question_model.dart';
// import 'mcq_question_model.dart';
// import 'true_false_question_model.dart';
//
// import 'question_model.dart';
//
// // Import the specialized question widgets (see below)
// import 'checkbox_question_widget.dart';
// import 'code_completion_question_widget.dart';
// import 'code_output_prediction_widget.dart';
// import 'drag_and_drop_question_widget.dart';
// import 'fill_in_the_blank_question_widget.dart';
// import 'mcq_question_widget.dart';
// import 'true_false_question_widget.dart';
//
// class QuestionWidget extends StatelessWidget {
//   final QuestionModel question;
//
//   const QuestionWidget({
//     Key? key,
//     required this.question,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     if (question is CheckboxQuestionModel) {
//       return CheckboxQuestionWidget(question: question as CheckboxQuestionModel);
//     } else if (question is CodeCompletionQuestionModel) {
//       return CodeCompletionQuestionWidget(
//           question: question as CodeCompletionQuestionModel);
//     } else if (question is CodeOutputPredictionQuestionModel) {
//       return CodeOutputPredictionQuestionWidget(
//           question: question as CodeOutputPredictionQuestionModel);
//     } else if (question is DragAndDropQuestionModel) {
//       return DragAndDropQuestionWidget(
//           question: question as DragAndDropQuestionModel);
//     } else if (question is FillInTheBlankQuestionModel) {
//       return FillInTheBlankQuestionWidget(
//           question: question as FillInTheBlankQuestionModel);
//     } else if (question is MCQQuestionModel) {
//       return MCQQuestionWidget(question: question as MCQQuestionModel);
//     } else if (question is TrueFalseQuestionModel) {
//       return TrueFalseQuestionWidget(question: question as TrueFalseQuestionModel);
//     } else {
//       return Text('Unknown question type: ${question.runtimeType}');
//     }
//   }
// }
