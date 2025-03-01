class TopicEntity {
  final int id;
  final String title;
  final String description;
  final int number;
  final int progress;
  final int documentID;
  final String videoURL;

  TopicEntity({
    required this.id,
    required this.title,
    required this.description,
    required this.number,
    required this.progress,
    required this.videoURL,
    required this.documentID,
  });
}

List<TopicEntity> mockTopicsTheme = [
  TopicEntity(
    id: 1,
    title: "Introduction to HTML",
    description: "Understand key concepts and best practices in HTML.",
    number: 1,
    progress: 31,
    documentID: -1,
    videoURL: '',
  ),
  // TopicEntity(
  //     id: 2,
  //     title: "HTML Tags & Elements",
  //     description: "Understand key concepts and best practices in HTML.",
  //     number: 2,
  //     progress: 86),
  // TopicEntity(
  //     id: 3,
  //     title: "HTML Forms",
  //     description: "Explore real-world examples and advanced HTML usage.",
  //     number: 3,
  //     progress: 9),
  // TopicEntity(
  //     id: 4,
  //     title: "HTML Tables",
  //     description: "Explore real-world examples and advanced HTML usage.",
  //     number: 4,
  //     progress: 69),
  // TopicEntity(
  //     id: 5,
  //     title: "HTML Multimedia",
  //     description: "Learn the basics of HTML.",
  //     number: 5,
  //     progress: 57),
  // TopicEntity(
  //     id: 6,
  //     title: "HTML SEO Best Practices",
  //     description: "Optimization techniques for better HTML structure.",
  //     number: 6,
  //     progress: 78),
  // TopicEntity(
  //     id: 7,
  //     title: "HTML5 Semantics",
  //     description: "Hands-on exercises to enhance HTML skills.",
  //     number: 7,
  //     progress: 40),
  // TopicEntity(
  //     id: 8,
  //     title: "HTML Forms & Validation",
  //     description: "Step-by-step guide to mastering HTML topics.",
  //     number: 8,
  //     progress: 23),
  // TopicEntity(
  //     id: 9,
  //     title: "HTML & CSS Integration",
  //     description: "Learn the basics of HTML.",
  //     number: 9,
  //     progress: 61),
  // TopicEntity(
  //     id: 10,
  //     title: "HTML Performance Optimization",
  //     description: "Optimization techniques for better HTML structure.",
  //     number: 10,
  //     progress: 50),
];
