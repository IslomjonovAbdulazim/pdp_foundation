class ThemeEntity {
  final int id;
  final String name;
  final String description;
  final int progress;
  final String image;
  final List<String> cover;

  ThemeEntity({
    required this.id,
    required this.name,
    required this.description,
    required this.progress,
    required this.image,
    this.cover = const ["HTML", "CSS"],
  });
}

List<ThemeEntity> mockThemes = [
  ThemeEntity(
      id: 1,
      name: "HTML Basics",
      description: "Learn the fundamental structure of HTML documents.",
      progress: 66,
      image:
          "https://upload.wikimedia.org/wikipedia/commons/6/61/HTML5_logo_and_wordmark.svg"),
  ThemeEntity(
      id: 2,
      name: "HTML Forms & Inputs",
      description: "Explore how to create forms and handle user input.",
      progress: 47,
      image:
          "https://upload.wikimedia.org/wikipedia/commons/6/61/HTML5_logo_and_wordmark.svg"),
  ThemeEntity(
      id: 3,
      name: "HTML5 Advanced Features",
      description: "Learn about semantic elements, audio, video, and canvas.",
      progress: 36,
      image:
          "https://upload.wikimedia.org/wikipedia/commons/6/61/HTML5_logo_and_wordmark.svg"),
  ThemeEntity(
      id: 4,
      name: "CSS Fundamentals",
      description: "Understand how to style web pages with CSS.",
      progress: 90,
      image:
          "https://upload.wikimedia.org/wikipedia/commons/6/61/HTML5_logo_and_wordmark.svg"),
  ThemeEntity(
      id: 5,
      name: "CSS Flexbox & Grid",
      description: "Master modern layout techniques for responsive design.",
      progress: 98,
      image:
          "https://upload.wikimedia.org/wikipedia/commons/6/61/HTML5_logo_and_wordmark.svg"),
  ThemeEntity(
      id: 6,
      name: "CSS Animations & Transitions",
      description: "Create smooth animations and transitions in web pages.",
      progress: 67,
      image:
          "https://upload.wikimedia.org/wikipedia/commons/6/61/HTML5_logo_and_wordmark.svg"),
  ThemeEntity(
      id: 7,
      name: "TypeScript Basics",
      description: "Learn the syntax and basic features of TypeScript.",
      progress: 74,
      image:
          "https://upload.wikimedia.org/wikipedia/commons/6/61/HTML5_logo_and_wordmark.svg"),
  ThemeEntity(
      id: 8,
      name: "TypeScript with React",
      description: "Integrate TypeScript into React projects.",
      progress: 76,
      image:
          "https://upload.wikimedia.org/wikipedia/commons/6/61/HTML5_logo_and_wordmark.svg"),
  ThemeEntity(
      id: 9,
      name: "Advanced TypeScript",
      description: "Understand generics, decorators, and complex types.",
      progress: 6,
      image:
          "https://upload.wikimedia.org/wikipedia/commons/6/61/HTML5_logo_and_wordmark.svg"),
];
