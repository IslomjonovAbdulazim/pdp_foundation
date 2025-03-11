class ThemeEntity {
  final int id;
  final String name;
  final String description;
  final int progress;
  final int number;
  final bool passed;

  ThemeEntity({
    required this.id,
    required this.name,
    required this.description,
    required this.progress,
    required this.number,
     this.passed = false,
  });
}

List<ThemeEntity> mockThemes = [
  ThemeEntity(
      id: 1,
      name: "HTML Basics",
      description: "Learn the fundamental structure of HTML documents.",
      progress: 66,
      number: 1),
  ThemeEntity(
      id: 2,
      name: "HTML Forms & Inputs",
      description: "Explore how to create forms and handle user input.",
      progress: 47,
      number: 2),
  ThemeEntity(
      id: 3,
      name: "HTML5 Advanced Features",
      description: "Learn about semantic elements, audio, video, and canvas.",
      progress: 36,
      number: 3),
  ThemeEntity(
      id: 4,
      name: "CSS Fundamentals",
      description: "Understand how to style web pages with CSS.",
      progress: 90,
      number: 4),
  ThemeEntity(
      id: 5,
      name: "CSS Flexbox & Grid",
      description: "Master modern layout techniques for responsive design.",
      progress: 98,
      number: 5),
  ThemeEntity(
      id: 6,
      name: "CSS Animations & Transitions",
      description: "Create smooth animations and transitions in web pages.",
      progress: 67,
      number: 6),
  ThemeEntity(
      id: 7,
      name: "TypeScript Basics",
      description: "Learn the syntax and basic features of TypeScript.",
      progress: 74,
      number: 7),
  ThemeEntity(
      id: 8,
      name: "TypeScript with React",
      description: "Integrate TypeScript into React projects.",
      progress: 76,
      number: 8),
  ThemeEntity(
      id: 9,
      name: "Advanced TypeScript",
      description: "Understand generics, decorators, and complex types.",
      progress: 6,
      number: 9),
];
