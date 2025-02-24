class DetailTopicEntity {
  final int id;
  final int themeID;
  final String topicTitle;
  final GeneralVideoEntity video;
  final int articleID;

  DetailTopicEntity({
    this.themeID = -1, // todo require it
    required this.id,
    required this.topicTitle,
    required this.video,
    required this.articleID,
  });
}

class GeneralVideoEntity {
  final int themeID;
  final int id;
  final String thumbnailImage;
  final String videoURL;
  final String title;

  GeneralVideoEntity({
    required this.themeID,
    required this.id,
    required this.thumbnailImage,
    required this.title,
    required this.videoURL,
  });
}

List<DetailTopicEntity> mockDetailThemes = [
  DetailTopicEntity(
    id: 1,
    topicTitle: "HTML Basics",
    video: GeneralVideoEntity(
        themeID: 1,
        id: 1,
        thumbnailImage: "https://img.youtube.com/vi/3JluqTojuME/0.jpg",
        title: "HTML Basics Tutorial",
        videoURL: "https://www.youtube.com/watch?v=3JluqTojuME"),
    articleID: 100,
  ),
  DetailTopicEntity(
    id: 2,
    topicTitle: "HTML Basics",
    video: GeneralVideoEntity(
        themeID: 1,
        id: 1,
        thumbnailImage: "https://img.youtube.com/vi/3JluqTojuME/0.jpg",
        title: "HTML Basics Tutorial",
        videoURL: "https://www.youtube.com/watch?v=3JluqTojuME"),
    articleID: 100,
  ),
  DetailTopicEntity(
    id: 3,
    topicTitle: "HTML Basics",
    video: GeneralVideoEntity(
        themeID: 1,
        id: 1,
        thumbnailImage: "https://img.youtube.com/vi/3JluqTojuME/0.jpg",
        title: "HTML Basics Tutorial",
        videoURL: "https://www.youtube.com/watch?v=3JluqTojuME"),
    articleID: 100,
  ),
];
