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
            onPressed: controller.load,
            child: Icon(
              CupertinoIcons.refresh,
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
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: CupertinoButton(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 10,
                          ),
                          color: context.onSurface,
                          onPressed: () async {
                            await Get.toNamed(AppRoutes.quiz,
                                arguments: controller.topic.value);
                            controller.reload();
                          },
                          child: Center(
                            child: Text(
                              "Quiz  |  ${controller.topic.value.progress}%",
                              style: context.elevatedButton,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
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
