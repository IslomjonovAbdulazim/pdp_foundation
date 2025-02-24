class SupportRequestEntity {
  final DateTime dateTime;
  final List<int> themes;
  final String description;
  final int userID;

  SupportRequestEntity({
    required this.dateTime,
    required this.themes,
    required this.description,
    required this.userID,
  });
}
