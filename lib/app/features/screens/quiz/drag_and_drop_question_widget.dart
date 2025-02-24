import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:pdp_foundation/utils/extenstions/text_style_extention.dart';

import '../../../data/models/quiz/drag_and_drop_question_model.dart'; // For listEquals

class DragAndDropQuestionWidget extends StatefulWidget {
  final DragAndDropQuestionModel question;
  final ValueChanged<List<String>>? onOrderChanged;

  const DragAndDropQuestionWidget({
    Key? key,
    required this.question,
    this.onOrderChanged,
  }) : super(key: key);

  @override
  _DragAndDropQuestionWidgetState createState() =>
      _DragAndDropQuestionWidgetState();
}

class _DragAndDropQuestionWidgetState extends State<DragAndDropQuestionWidget> {
  late List<String> _currentOrder;
  bool? _isCorrect; // null means answer has not been checked yet

  @override
  void initState() {
    super.initState();
    // Initialize with the provided items order.
    _currentOrder = List.from(widget.question.items);
  }

  // Handle the reordering of items.
  void _onReorder(int oldIndex, int newIndex) {
    setState(() {
      if (newIndex > oldIndex) {
        newIndex -= 1;
      }
      final item = _currentOrder.removeAt(oldIndex);
      _currentOrder.insert(newIndex, item);
    });
    if (widget.onOrderChanged != null) {
      widget.onOrderChanged!(_currentOrder);
    }
  }

  // Check if the current order matches the correct order.
  void _checkAnswer() {
    setState(() {
      _isCorrect = listEquals(_currentOrder, widget.question.correctOrder);
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
            // Display the reorderable list.
            ReorderableListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              onReorder: _onReorder,
              children: _currentOrder.asMap().entries.map((entry) {
                final index = entry.key;
                final item = entry.value;
                return ListTile(
                  key: ValueKey(item),
                  leading: const Icon(Icons.drag_handle),
                  title: Text(item),
                );
              }).toList(),
            ),
            const SizedBox(height: 16),
            // Button to check the answer.
            ElevatedButton(
              onPressed: _checkAnswer,
              child: const Text('Check Answer'),
            ),
            const SizedBox(height: 16),
            // Display feedback if the answer has been checked.
            if (_isCorrect != null)
              Text(
                _isCorrect!
                    ? 'Correct!'
                    : 'Incorrect. The correct order is: ${widget.question.correctOrder.join(", ")}',
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
