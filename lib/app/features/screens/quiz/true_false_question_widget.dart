import 'package:flutter/material.dart';
import 'package:pdp_foundation/utils/extenstions/text_style_extention.dart';

import '../../../data/models/quiz/true_false_question_model.dart';

class TrueFalseQuestionWidget extends StatefulWidget {
  final TrueFalseQuestionModel question;
  final ValueChanged<bool>? onAnswerSelected;

  const TrueFalseQuestionWidget({
    Key? key,
    required this.question,
    this.onAnswerSelected,
  }) : super(key: key);

  @override
  _TrueFalseQuestionWidgetState createState() =>
      _TrueFalseQuestionWidgetState();
}

class _TrueFalseQuestionWidgetState extends State<TrueFalseQuestionWidget> {
  bool? _selectedAnswer;
  bool? _isCorrect;

  // Update selected answer and reset any previous feedback.
  void _onAnswerChanged(bool? value) {
    setState(() {
      _selectedAnswer = value;
      _isCorrect = null; // Reset feedback on new selection.
    });
    if (value != null && widget.onAnswerSelected != null) {
      widget.onAnswerSelected!(value);
    }
  }

  // Compare the selected answer with the correct answer.
  void _checkAnswer() {
    setState(() {
      _isCorrect = _selectedAnswer == widget.question.correctAnswer;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Display the question text.
            Text(
              widget.question.questionText,
              style: context.title,
            ),
            const SizedBox(height: 16),
            // Radio option for "True".
            RadioListTile<bool>(
              title: const Text("True"),
              value: true,
              groupValue: _selectedAnswer,
              onChanged: _onAnswerChanged,
            ),
            // Radio option for "False".
            RadioListTile<bool>(
              title: const Text("False"),
              value: false,
              groupValue: _selectedAnswer,
              onChanged: _onAnswerChanged,
            ),
            const SizedBox(height: 16),
            // Button to check the answer.
            ElevatedButton(
              onPressed: _checkAnswer,
              child: const Text("Check Answer"),
            ),
            const SizedBox(height: 16),
            // Display feedback once the answer is checked.
            if (_isCorrect != null)
              Text(
                _isCorrect!
                    ? "Correct!"
                    : "Incorrect. The correct answer is ${widget.question.correctAnswer ? 'True' : 'False'}.",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: _isCorrect! ? Colors.green : Colors.red,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
