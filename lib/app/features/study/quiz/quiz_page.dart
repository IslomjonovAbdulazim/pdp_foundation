part of 'imports.dart';

class QuizPage extends GetView<QuizController> {
  const QuizPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Obx(
          () => controller.isLoading.value
              ? const Center(
                  child: CircularProgressIndicator.adaptive(),
                )
              : Column(
                  children: [
                    Text(
                      controller.quiz.value.questions.length.toString(),
                      style: context.title,
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
