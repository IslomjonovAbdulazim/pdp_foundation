import 'package:flutter/material.dart';
import 'package:pdp_foundation/utils/extenstions/text_style_extention.dart';

import '../../../data/models/quiz/code_output_prediction_question_model.dart';

class CodeOutputPredictionQuestionWidget extends StatefulWidget {
  final CodeOutputPredictionQuestionModel question;
  final ValueChanged<String>? onAnswerSubmitted;

  const CodeOutputPredictionQuestionWidget({
    Key? key,
    required this.question,
    this.onAnswerSubmitted,
  }) : super(key: key);

  @override
  _CodeOutputPredictionQuestionWidgetState createState() =>
      _CodeOutputPredictionQuestionWidgetState();
}

class _CodeOutputPredictionQuestionWidgetState
    extends State<CodeOutputPredictionQuestionWidget> {
  final TextEditingController _controller = TextEditingController();
  bool? _isCorrect; // null means not checked yet
  String? _submittedAnswer;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _checkAnswer() {
    setState(() {
      _submittedAnswer = _controller.text.trim();
      // Comparing after trimming to avoid extra whitespace issues.
      _isCorrect = _submittedAnswer == widget.question.correctOutput.trim();
    });
    if (widget.onAnswerSubmitted != null && _submittedAnswer != null) {
      widget.onAnswerSubmitted!(_submittedAnswer!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Display the question text.
            Text(
              widget.question.questionText,
              style: context.title,
            ),
            const SizedBox(height: 12),
            // Display the code snippet with a monospaced font.
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                widget.question.codeSnippet,
                style: const TextStyle(
                  fontFamily: 'SourceCodePro', // Use a monospaced font.
                  fontSize: 14,
                  color: Colors.black87,
                ),
              ),
            ),
            const SizedBox(height: 16),
            // Input field for the user's predicted output.
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Your predicted output',
              ),
              maxLines: null, // Allow multi-line input.
            ),
            const SizedBox(height: 16),
            // Button to check the answer.
            ElevatedButton(
              onPressed: _checkAnswer,
              child: const Text('Check Answer'),
            ),
            const SizedBox(height: 16),
            // Display feedback once the answer has been submitted.
            if (_isCorrect != null)
              Text(
                _isCorrect!
                    ? 'Correct!'
                    : 'Incorrect. Correct answer is:\n${widget.question.correctOutput}',
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
