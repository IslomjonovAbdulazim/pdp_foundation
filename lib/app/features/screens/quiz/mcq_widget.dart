import 'package:flutter/material.dart';
import 'package:pdp_foundation/utils/extenstions/text_style_extention.dart';

import '../../../data/models/quiz/multiple_choice_question_model.dart';

class MCQQuestionWidget extends StatefulWidget {
  final MCQQuestionModel question;
  final ValueChanged<int>? onOptionSelected;

  const MCQQuestionWidget({
    Key? key,
    required this.question,
    this.onOptionSelected,
  }) : super(key: key);

  @override
  _MCQQuestionWidgetState createState() => _MCQQuestionWidgetState();
}

class _MCQQuestionWidgetState extends State<MCQQuestionWidget> {
  int? _selectedOptionIndex;
  bool? _isCorrect;

  void _handleOptionChanged(int? value) {
    setState(() {
      _selectedOptionIndex = value;
      _isCorrect = null; // Reset feedback if user changes selection
    });
    if (value != null && widget.onOptionSelected != null) {
      widget.onOptionSelected!(value);
    }
  }

  void _checkAnswer() {
    setState(() {
      _isCorrect = _selectedOptionIndex == widget.question.correctOptionIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.all(8),
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
            // List of options as radio buttons.
            ...List.generate(widget.question.options.length, (index) {
              return RadioListTile<int>(
                title: Text(widget.question.options[index]),
                value: index,
                groupValue: _selectedOptionIndex,
                onChanged: _handleOptionChanged,
              );
            }),
            const SizedBox(height: 16),
            // Button to check the selected answer.
            ElevatedButton(
              onPressed: _checkAnswer,
              child: const Text('Check Answer'),
            ),
            const SizedBox(height: 16),
            // Feedback message.
            if (_isCorrect != null)
              Text(
                _isCorrect!
                    ? 'Correct!'
                    : 'Incorrect. The correct answer is "${widget.question.options[widget.question.correctOptionIndex]}".',
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
