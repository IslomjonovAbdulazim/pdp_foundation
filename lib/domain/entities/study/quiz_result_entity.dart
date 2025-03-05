class QuizResultEntity {
  final int quizID;
  final int topicID;
  final List<int> corrects;
  final List<int> wrongs;
  final DateTime start;
  final DateTime end;

  QuizResultEntity({
    required this.quizID,
    required this.topicID,
    required this.corrects,
    required this.wrongs,
    required this.start,
    required this.end,
  });
}
