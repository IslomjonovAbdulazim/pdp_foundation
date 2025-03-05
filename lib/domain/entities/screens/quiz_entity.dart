class QuizEntity {
  final int id;
  final String question;
  final String codeSnippet;
  final String language;
  final List<String> options;

  QuizEntity({
    required this.id,
    required this.question,
    required this.codeSnippet,
    required this.language,
    required this.options,
  });
}

// quiz {lesson:topic}

// leaderboard
// match pairing (rating based)
// live match
