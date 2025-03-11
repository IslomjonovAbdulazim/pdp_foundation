part of 'imports.dart';

class QuizResultPage extends GetView<QuizResultController> {
  const QuizResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: controller.isLoading.value
              ? const CircularProgressIndicator.adaptive()
              : Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      const Spacer(),
                      Text(
                        controller.result.value.topic,
                        style: context.title,
                      ),
                      SizedBox(
                        height: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "${controller.result.value.corrects.length}",
                              style: TextStyle(
                                fontFamily: FontConstants.nunito,
                                fontSize: 30,
                                fontWeight: FontWeight.w700,
                                color: context.greenColor,
                              ),
                            ),
                            const SizedBox(width: 30),
                            Text(
                              "${controller.result.value.wrongs.length}",
                              style: TextStyle(
                                fontFamily: FontConstants.nunito,
                                fontSize: 30,
                                fontWeight: FontWeight.w700,
                                color: context.error,
                              ),
                            ),
                            const SizedBox(width: 30),
                            Text(
                              controller.percentage,
                              style: context.title,
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "+${controller.result.value.earned.toStringAsFixed(1)}pts",
                        style: context.title,
                      ),
                      const Spacer(),
                      CupertinoButton(
                        color: context.onSurface,
                        borderRadius: BorderRadius.circular(15),
                        onPressed: () {
                          Get.back();
                        },
                        child: Center(
                          child: Text(
                            TitleConstants.goBack,
                            style: context.elevatedButton,
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
