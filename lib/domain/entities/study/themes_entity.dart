class ThemesEntity {
  final int id;
  final String name;
  final String description;
  final String status; // not-started, ongoing, finished

  ThemesEntity({
    required this.id,
    required this.name,
    required this.description,
    required this.status,
  });
}
