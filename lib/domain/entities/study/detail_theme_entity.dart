class DetailThemeEntity {
  final int id;
  final String themeTitle;
  final List<GeneralVideoEntity> videos;
  final String articleID;

  DetailThemeEntity({
    required this.id,
    required this.themeTitle,
    required this.videos,
    required this.articleID,
  });
}

class GeneralVideoEntity {
  final int id;
  final String thumbnailImage;
  final String title;

  GeneralVideoEntity({
    required this.id,
    required this.thumbnailImage,
    required this.title,
  });
}
