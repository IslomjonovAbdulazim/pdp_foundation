class QuizResultEntity {
  final int topicID;
  final List<int> corrects;
  final List<int> wrongs;
  final DateTime start;
  final DateTime end;
  final String topic;

  QuizResultEntity({
    required this.topicID,
    required this.corrects,
    required this.wrongs,
    required this.start,
    required this.end,
    required this.topic,
  });
}


