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
              : Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      const Spacer(),
                      Text(
                        controller.question.questionText,
                        style: context.title,
                        textAlign: TextAlign.center,
                      ),
                      QuizScreen(question: controller.question),
                      const Spacer(flex: 3),
                      CupertinoButton(
                        color: context.textPrimary,
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        borderRadius: BorderRadius.circular(15),
                        onPressed: () {},
                        child: Center(
                          child: Text(
                            controller.buttonText.value,
                            style: TextStyle(
                              color: context.backgroundColor,
                              fontSize: 22,
                              fontFamily: FontConstants.nunito,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
