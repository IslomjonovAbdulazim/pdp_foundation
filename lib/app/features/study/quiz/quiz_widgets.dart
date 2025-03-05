part of 'imports.dart';

class QuizScreen extends StatelessWidget {
  final QuestionModel question;

  const QuizScreen({super.key, required this.question});

  @override
  Widget build(BuildContext context) {
    switch (question.type) {
      case 'code_output':
        return CodeOutputPredictionQuestionWidget(
          question: question as CodeOutputPredictionQuestionModel,
        );
      case 'code_completion':
        return CodeCompletionQuestionWidget(
          question: question as CodeCompletionQuestionModel,
        );
      case 'fill_in_the_blank':
        return FillInTheBlankQuestionWidget(
          question: question as FillInTheBlankQuestionModel,
        );
      case 'mcq':
        return MCQQuestionWidget(
          question: question as MCQQuestionModel,
        );
      case 'classic':
        return ClassicQuestionWidget(
          question: question as ClassicQuestionModel,
        );
      default:
        return const ListTile(
          title: Text('Unknown question type'),
        );
    }
  }
}

class CodeOutputPredictionQuestionWidget extends GetView<QuizController> {
  final CodeOutputPredictionQuestionModel question;

  const CodeOutputPredictionQuestionWidget({super.key, required this.question});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        _buildCodeBlock(context, question.codeSnippet, question.language),
        InputWidget(
          controller: controller.controller,
          focus: FocusNode().obs,
          hint: "Output...",
        ),
      ],
    );
  }
}

// Widget for Code Completion questions.
class CodeCompletionQuestionWidget extends StatelessWidget {
  final CodeCompletionQuestionModel question;

  const CodeCompletionQuestionWidget({super.key, required this.question});

  @override
  Widget build(BuildContext context) {
    // For demonstration, this widget shows a list of options.
    // In a real app, you might want to track the selected option.
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              question.questionText,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('Code Snippet:'),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(8),
              color: Colors.grey[200],
              child: Text(
                question.codeSnippet,
                style: TextStyle(fontFamily: 'monospace'),
              ),
            ),
            SizedBox(height: 8),
            ...question.options.map((option) => RadioListTile<String>(
                  title: Text(option),
                  value: option,
                  groupValue: null, // To be managed with state.
                  onChanged: (value) {},
                )),
            ElevatedButton(
              onPressed: () {
                // Navigate to show the correct answer.
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        AnswerScreen(answer: question.correctAnswer),
                  ),
                );
              },
              child: Text('Show Answer'),
            ),
          ],
        ),
      ),
    );
  }
}

// Widget for Fill in the Blank questions.
class FillInTheBlankQuestionWidget extends StatelessWidget {
  final FillInTheBlankQuestionModel question;

  const FillInTheBlankQuestionWidget({Key? key, required this.question})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Using a TextEditingController to capture the user's answer.
    TextEditingController controller = TextEditingController();
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              question.questionText,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('Code Snippet:'),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(8),
              color: Colors.grey[200],
              child: Text(
                question.codeSnippet,
                style: TextStyle(fontFamily: 'monospace'),
              ),
            ),
            SizedBox(height: 8),
            TextField(
              controller: controller,
              decoration: InputDecoration(
                labelText: 'Your Answer',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                // For this demo, navigate to the answer screen.
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        AnswerScreen(answer: question.correctAnswer),
                  ),
                );
              },
              child: Text('Submit Answer'),
            ),
          ],
        ),
      ),
    );
  }
}

// Widget for Multiple Choice questions.
class MCQQuestionWidget extends StatelessWidget {
  final MCQQuestionModel question;

  const MCQQuestionWidget({Key? key, required this.question}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // For demonstration purposes, state management is not included.
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              question.questionText,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Column(
              children: List.generate(question.options.length, (index) {
                return RadioListTile<int>(
                  title: Text(question.options[index]),
                  value: index,
                  groupValue: null, // This should be managed via state.
                  onChanged: (value) {},
                );
              }),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to an answer screen showing the correct option.
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AnswerScreen(
                        answer: question.options[question.correctOptionIndex]),
                  ),
                );
              },
              child: Text('Show Answer'),
            ),
          ],
        ),
      ),
    );
  }
}

// Widget for Classic questions.
class ClassicQuestionWidget extends StatelessWidget {
  final ClassicQuestionModel question;

  const ClassicQuestionWidget({Key? key, required this.question})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // In this example, tapping on any option will navigate to the answer.
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              question.questionText,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Column(
              children: question.options.map((option) {
                return ListTile(
                  title: Text(option),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            AnswerScreen(answer: question.correctAnswer),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

// A simple answer screen widget to display the correct answer.
class AnswerScreen extends StatelessWidget {
  final String answer;

  const AnswerScreen({Key? key, required this.answer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Answer'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            answer,
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}

Widget _buildCodeBlock(BuildContext context, String content, String language) {
  return Stack(
    alignment: Alignment.topRight,
    children: [
      Container(
        width: double.infinity,
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: context.backgroundColor,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: context.dividerColor),
        ),
        child: HighlightView(
          content,
          language: language,
          theme: Get.isDarkMode
              ? githubThemeDarkCustom(context)
              : githubThemeLightCustom(context),
          padding: const EdgeInsets.all(8),
          textStyle: context.code,
        ),
      ),
      IconButton(
        icon: Icon(
          Icons.copy,
          color: context.textPrimary,
          size: 20,
        ),
        onPressed: () {
          Clipboard.setData(ClipboardData(text: content));
          Get.closeAllSnackbars();
          Get.snackbar(
            "Copied!",
            "The code has been successfully copied to your clipboard.",
            snackPosition: SnackPosition.BOTTOM,
            duration: const Duration(seconds: 3),
          );
        },
      )
    ],
  );
}
