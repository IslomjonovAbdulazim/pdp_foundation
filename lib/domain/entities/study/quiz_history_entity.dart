class QuizHistoryEntity {
  final int id;
  final DateTime time;
  final int corrects;
  final int wrongs;

  QuizHistoryEntity({
    required this.id,
    required this.time,
    required this.corrects,
    required this.wrongs,
  });
}

class QuizHistoryDetailEntity {
  final int questionId;
  final String userSelection;
  final int time;

  QuizHistoryDetailEntity({
    required this.questionId,
    required this.userSelection,
    required this.time,
  });
}




