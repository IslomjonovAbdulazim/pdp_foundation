part of 'imports.dart';

class DetailThemePage extends GetView<DetailThemeController> {
  const DetailThemePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: context.backgroundColor,
        centerTitle: true,
        title: Text(controller.topic.value.title),
        actions: [
          CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              Get.toNamed(AppRoutes.quiz, arguments: controller.topic.value);
            },
            child: Icon(
              CupertinoIcons.play,
              color: context.textPrimary,
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
              : SingleChildScrollView(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      _Video(controller.topic.value.videoURL),
                      ArticleWidget(article: controller.article),
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
