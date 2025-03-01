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
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const _Video(),
              ArticleWidget(article: mockArticles.first),
            ],
          ),
        ),
      ),
    );
  }
}
