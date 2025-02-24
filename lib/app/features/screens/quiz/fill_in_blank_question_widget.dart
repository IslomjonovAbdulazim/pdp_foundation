import 'package:flutter/material.dart';
import 'package:pdp_foundation/utils/extenstions/text_style_extention.dart';

import '../../../data/models/quiz/fill_in_blank_question_model.dart';

class FillInTheBlankQuestionWidget extends StatefulWidget {
  final FillInTheBlankQuestionModel question;
  final ValueChanged<String>? onAnswerSubmitted;

  const FillInTheBlankQuestionWidget({
    Key? key,
    required this.question,
    this.onAnswerSubmitted,
  }) : super(key: key);

  @override
  _FillInTheBlankQuestionWidgetState createState() =>
      _FillInTheBlankQuestionWidgetState();
}

class _FillInTheBlankQuestionWidgetState
    extends State<FillInTheBlankQuestionWidget> {
  final TextEditingController _controller = TextEditingController();
  bool? _isCorrect; // null indicates answer not checked yet
  String? _submittedAnswer;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _checkAnswer() {
    setState(() {
      _submittedAnswer = _controller.text.trim();
      // Comparing the trimmed answer with the correct answer.
      _isCorrect = _submittedAnswer == widget.question.correctAnswer;
    });
    if (widget.onAnswerSubmitted != null && _submittedAnswer != null) {
      widget.onAnswerSubmitted!(_submittedAnswer!);
    }
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
            // Display the code snippet in a monospaced style.
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                widget.question.codeSnippet,
                style: const TextStyle(
                  fontFamily: 'SourceCodePro', // or any monospaced font you prefer
                  fontSize: 14,
                  color: Colors.black87,
                ),
              ),
            ),
            const SizedBox(height: 16),
            // Input field for the user's answer.
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter your answer',
              ),
            ),
            const SizedBox(height: 16),
            // Button to check the answer.
            ElevatedButton(
              onPressed: _checkAnswer,
              child: const Text('Check Answer'),
            ),
            const SizedBox(height: 16),
            // Display feedback after checking the answer.
            if (_isCorrect != null)
              Text(
                _isCorrect!
                    ? 'Correct!'
                    : 'Incorrect. The correct answer is: ${widget.question.correctAnswer}',
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
