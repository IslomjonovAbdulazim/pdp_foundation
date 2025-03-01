part of 'imports.dart';

class DetailThemePage extends GetView<DetailThemeController> {
  const DetailThemePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: context.backgroundColor,
        title: Text(controller.topic.value.title),
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
