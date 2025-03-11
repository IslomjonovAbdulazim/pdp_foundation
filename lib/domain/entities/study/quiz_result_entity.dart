class QuizResultEntity {
  final int topicID;
  final List<int> corrects;
  final List<int> wrongs;
  final DateTime start;
  final DateTime end;
  late String topic;
  late double earned;

  QuizResultEntity({
    required this.topicID,
    required this.corrects,
    required this.wrongs,
    required this.start,
    required this.end,
    this.topic = "",
    this.earned = 0,
  });
}
