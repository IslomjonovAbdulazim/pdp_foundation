part of 'imports.dart';

class QuizPage extends GetView<QuizController> {
  const QuizPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          controller.topic.value.title,
          style: context.biggerName,
        ),
        actions: [
          Obx(
            () => Text(
              "${controller.currentQuestion.value + 1}/${controller.quiz.length}",
              style: context.biggerName,
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: SafeArea(
        child: Obx(
          () => controller.isLoading.value
              ? const Center(
                  child: CircularProgressIndicator.adaptive(),
                )
              : Column(
                  children: [
                    _Question(text: controller.question.question),
                    const SizedBox(height: 10),
                    _Code(
                      code: controller.question.codeSnippet,
                      language: controller.question.language,
                    ),
                    _Variants(
                      (String variant) {
                        controller.selectVariant(variant);
                      },
                      controller.question.options,
                      controller.isSelected,
                    ),
                    const SizedBox(height: 10),
                    _Button(
                      controller.nextQuestion,
                      buttonText: controller.status,
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
