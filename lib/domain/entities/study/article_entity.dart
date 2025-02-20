class ArticleEntity {
  final String id;
  final String title;
  final List<ArticleContentEntity> content;

  ArticleEntity({
    required this.id,
    required this.title,
    required this.content,
  });
}

class ArticleContentEntity {
  final String type;
  final String data;

  ArticleContentEntity({
    required this.type,
    required this.data,
  });
}

enum ContentType { title, text, code, image, quote }

