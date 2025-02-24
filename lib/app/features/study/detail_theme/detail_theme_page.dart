part of 'imports.dart';

class DetailThemePage extends StatelessWidget {
  const DetailThemePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Get.arguments as ThemeEntity;
    final detailTheme = mockDetailThemes.firstWhere((th) => th.id == theme.id);
    final article = mockArticles.firstWhere((article) => article.id == theme.id);
    return Scaffold(
      appBar: AppBar(
        title: Text(detailTheme.topicTitle),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            children: [
              ArticleWidget(article: article),
            ],
          ),
        ),
      ),
    );
  }
}
