class DetailThemeEntity {
  final int id;
  final String themeTitle;
  final List<GeneralVideoEntity> videos;
  final int articleID;

  DetailThemeEntity({
    required this.id,
    required this.themeTitle,
    required this.videos,
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

List<DetailThemeEntity> mockDetailThemes = [
  DetailThemeEntity(
      id: 1,
      themeTitle: "HTML Basics",
      videos: [
        GeneralVideoEntity(
            themeID: 1,
            id: 1,
            thumbnailImage: "https://img.youtube.com/vi/3JluqTojuME/0.jpg",
            title: "HTML Basics Tutorial",
            videoURL: "https://www.youtube.com/watch?v=3JluqTojuME"),
        GeneralVideoEntity(
            themeID: 1,
            id: 2,
            thumbnailImage: "https://img.youtube.com/vi/qz0aGYrrlhU/0.jpg",
            title: "HTML Forms and Inputs",
            videoURL: "https://www.youtube.com/watch?v=qz0aGYrrlhU"),
        GeneralVideoEntity(
            themeID: 1,
            id: 3,
            thumbnailImage: "https://img.youtube.com/vi/wXZp_2c4zYg/0.jpg",
            title: "HTML5 Advanced Features",
            videoURL: "https://www.youtube.com/watch?v=wXZp_2c4zYg"),
      ],
      articleID: 100),
  DetailThemeEntity(
      id: 2,
      themeTitle: "HTML Forms & Inputs",
      videos: [
        GeneralVideoEntity(
            themeID: 2,
            id: 2,
            thumbnailImage: "https://img.youtube.com/vi/qz0aGYrrlhU/0.jpg",
            title: "HTML Forms and Inputs",
            videoURL: "https://www.youtube.com/watch?v=qz0aGYrrlhU"),
        GeneralVideoEntity(
            themeID: 2,
            id: 3,
            thumbnailImage: "https://img.youtube.com/vi/wXZp_2c4zYg/0.jpg",
            title: "HTML5 Advanced Features",
            videoURL: "https://www.youtube.com/watch?v=wXZp_2c4zYg"),
        GeneralVideoEntity(
            themeID: 2,
            id: 4,
            thumbnailImage: "https://img.youtube.com/vi/yfoY53QXEnI/0.jpg",
            title: "CSS Fundamentals",
            videoURL: "https://www.youtube.com/watch?v=yfoY53QXEnI"),
      ],
      articleID: 200),
  DetailThemeEntity(
      id: 3,
      themeTitle: "HTML5 Advanced Features",
      videos: [
        GeneralVideoEntity(
            themeID: 3,
            id: 3,
            thumbnailImage: "https://img.youtube.com/vi/wXZp_2c4zYg/0.jpg",
            title: "HTML5 Advanced Features",
            videoURL: "https://www.youtube.com/watch?v=wXZp_2c4zYg"),
        GeneralVideoEntity(
            themeID: 3,
            id: 4,
            thumbnailImage: "https://img.youtube.com/vi/yfoY53QXEnI/0.jpg",
            title: "CSS Fundamentals",
            videoURL: "https://www.youtube.com/watch?v=yfoY53QXEnI"),
        GeneralVideoEntity(
            themeID: 3,
            id: 5,
            thumbnailImage: "https://img.youtube.com/vi/fYq5PXgSsbE/0.jpg",
            title: "CSS Flexbox & Grid",
            videoURL: "https://www.youtube.com/watch?v=fYq5PXgSsbE"),
      ],
      articleID: 300),
  DetailThemeEntity(
      id: 4,
      themeTitle: "CSS Fundamentals",
      videos: [
        GeneralVideoEntity(
            themeID: 4,
            id: 4,
            thumbnailImage: "https://img.youtube.com/vi/yfoY53QXEnI/0.jpg",
            title: "CSS Fundamentals",
            videoURL: "https://www.youtube.com/watch?v=yfoY53QXEnI"),
        GeneralVideoEntity(
            themeID: 4,
            id: 5,
            thumbnailImage: "https://img.youtube.com/vi/fYq5PXgSsbE/0.jpg",
            title: "CSS Flexbox & Grid",
            videoURL: "https://www.youtube.com/watch?v=fYq5PXgSsbE"),
        GeneralVideoEntity(
            themeID: 4,
            id: 6,
            thumbnailImage: "https://img.youtube.com/vi/jgw82b5Y2MU/0.jpg",
            title: "CSS Animations & Transitions",
            videoURL: "https://www.youtube.com/watch?v=jgw82b5Y2MU"),
      ],
      articleID: 400),
  DetailThemeEntity(
      id: 5,
      themeTitle: "CSS Flexbox & Grid",
      videos: [
        GeneralVideoEntity(
            themeID: 5,
            id: 5,
            thumbnailImage: "https://img.youtube.com/vi/fYq5PXgSsbE/0.jpg",
            title: "CSS Flexbox & Grid",
            videoURL: "https://www.youtube.com/watch?v=fYq5PXgSsbE"),
        GeneralVideoEntity(
            themeID: 5,
            id: 6,
            thumbnailImage: "https://img.youtube.com/vi/jgw82b5Y2MU/0.jpg",
            title: "CSS Animations & Transitions",
            videoURL: "https://www.youtube.com/watch?v=jgw82b5Y2MU"),
        GeneralVideoEntity(
            themeID: 5,
            id: 7,
            thumbnailImage: "https://img.youtube.com/vi/BwuLxPH8IDs/0.jpg",
            title: "TypeScript Basics",
            videoURL: "https://www.youtube.com/watch?v=BwuLxPH8IDs"),
      ],
      articleID: 500),
  DetailThemeEntity(
      id: 6,
      themeTitle: "CSS Animations & Transitions",
      videos: [
        GeneralVideoEntity(
            themeID: 6,
            id: 6,
            thumbnailImage: "https://img.youtube.com/vi/jgw82b5Y2MU/0.jpg",
            title: "CSS Animations & Transitions",
            videoURL: "https://www.youtube.com/watch?v=jgw82b5Y2MU"),
        GeneralVideoEntity(
            themeID: 6,
            id: 7,
            thumbnailImage: "https://img.youtube.com/vi/BwuLxPH8IDs/0.jpg",
            title: "TypeScript Basics",
            videoURL: "https://www.youtube.com/watch?v=BwuLxPH8IDs"),
        GeneralVideoEntity(
            themeID: 6,
            id: 8,
            thumbnailImage: "https://img.youtube.com/vi/-xIVn3UqYFs/0.jpg",
            title: "TypeScript with React",
            videoURL: "https://www.youtube.com/watch?v=-xIVn3UqYFs"),
      ],
      articleID: 600),
  DetailThemeEntity(
      id: 7,
      themeTitle: "TypeScript Basics",
      videos: [
        GeneralVideoEntity(
            themeID: 7,
            id: 7,
            thumbnailImage: "https://img.youtube.com/vi/BwuLxPH8IDs/0.jpg",
            title: "TypeScript Basics",
            videoURL: "https://www.youtube.com/watch?v=BwuLxPH8IDs"),
        GeneralVideoEntity(
            themeID: 7,
            id: 8,
            thumbnailImage: "https://img.youtube.com/vi/-xIVn3UqYFs/0.jpg",
            title: "TypeScript with React",
            videoURL: "https://www.youtube.com/watch?v=-xIVn3UqYFs"),
        GeneralVideoEntity(
            themeID: 7,
            id: 9,
            thumbnailImage: "https://img.youtube.com/vi/30LWjhZzg50/0.jpg",
            title: "Advanced TypeScript",
            videoURL: "https://www.youtube.com/watch?v=30LWjhZzg50"),
      ],
      articleID: 700),
];
