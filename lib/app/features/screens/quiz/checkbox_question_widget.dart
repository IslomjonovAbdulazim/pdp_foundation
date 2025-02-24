import 'package:flutter/material.dart';
import 'package:pdp_foundation/utils/extenstions/text_style_extention.dart';

import '../../../data/models/quiz/checkbox_question_model.dart';

class CheckboxQuestionWidget extends StatefulWidget {
  final CheckboxQuestionModel question;
  final void Function(List<int> selectedIndexes)? onSelectionChanged;

  const CheckboxQuestionWidget({
    super.key,
    required this.question,
    this.onSelectionChanged,
  });

  @override
  _CheckboxQuestionWidgetState createState() => _CheckboxQuestionWidgetState();
}

class _CheckboxQuestionWidgetState extends State<CheckboxQuestionWidget> {
  // Maintain selection state for each option.
  late List<bool> _selectedOptions;

  @override
  void initState() {
    super.initState();
    // Initialize all options as unselected.
    _selectedOptions = List<bool>.filled(widget.question.options.length, false);
  }

  void _onOptionChanged(int index, bool? isChecked) {
    setState(() {
      _selectedOptions[index] = isChecked ?? false;
    });

    // Notify parent widget of the updated selection if a callback is provided.
    if (widget.onSelectionChanged != null) {
      final selectedIndexes = <int>[];
      for (int i = 0; i < _selectedOptions.length; i++) {
        if (_selectedOptions[i]) {
          selectedIndexes.add(i);
        }
      }
      widget.onSelectionChanged!(selectedIndexes);
    }
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
            // Build a list of checkbox options.
            ...List.generate(widget.question.options.length, (index) {
              return CheckboxListTile(
                title: Text(widget.question.options[index]),
                value: _selectedOptions[index],
                onChanged: (value) => _onOptionChanged(index, value),
              );
            }),
          ],
        ),
      ),
    );
  }
}
