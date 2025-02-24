class TopicEntity {
  final int id;
  final int themeID;
  final String title;
  final List<String> cover;

  TopicEntity({
    required this.id,
    required this.themeID,
    required this.title,
    required this.cover,
  });
}
