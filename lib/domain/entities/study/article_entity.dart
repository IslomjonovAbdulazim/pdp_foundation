class Article {
  final String id;
  final String title;
  final List<ArticleContentEntity> content;

  Article({
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

enum ContentType {
  title, // Section titles
  text, // Paragraphs
  code, // Code snippets
  image, // Images (URL or asset path)
  quote, // Blockquotes or highlights
}
