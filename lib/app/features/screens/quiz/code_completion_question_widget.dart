import 'package:flutter/material.dart';
import 'package:pdp_foundation/utils/extenstions/text_style_extention.dart';

import '../../../data/models/quiz/code_completion_question_model.dart';

class CodeCompletionQuestionWidget extends StatefulWidget {
  final CodeCompletionQuestionModel question;
  final ValueChanged<int>? onOptionSelected;

  const CodeCompletionQuestionWidget({
    Key? key,
    required this.question,
    this.onOptionSelected,
  }) : super(key: key);

  @override
  _CodeCompletionQuestionWidgetState createState() => _CodeCompletionQuestionWidgetState();
}

class _CodeCompletionQuestionWidgetState extends State<CodeCompletionQuestionWidget> {
  int? _selectedOptionIndex;

  void _handleOptionSelected(int? index) {
    setState(() {
      _selectedOptionIndex = index;
    });
    if (index != null && widget.onOptionSelected != null) {
      widget.onOptionSelected!(index);
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
                  fontFamily: 'SourceCodePro', // Make sure you have this font or use another monospaced font.
                  fontSize: 14,
                  color: Colors.black87,
                ),
              ),
            ),
            const SizedBox(height: 16),
            // Display options using RadioListTile.
            Column(
              children: List.generate(widget.question.options.length, (index) {
                return RadioListTile<int>(
                  title: Text(widget.question.options[index]),
                  value: index,
                  groupValue: _selectedOptionIndex,
                  onChanged: _handleOptionSelected,
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
