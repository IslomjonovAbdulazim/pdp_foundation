class StreakEntity {
  final int currentStreak;
  final int longestStreak;
  final List<DateTime> activeDates;

  StreakEntity({
    required this.currentStreak,
    required this.longestStreak,
    required this.activeDates,
  });
}

StreakEntity mockStreakEntity = StreakEntity(
  currentStreak: 25,
  longestStreak: 35, // Longest streak adjusted
  activeDates: [
    DateTime(2025, 1, 25),
    DateTime(2025, 1, 20),
    DateTime(2025, 1, 15),
    DateTime(2025, 1, 10),
    DateTime(2025, 1, 5),
    DateTime(2024, 12, 30),
    DateTime(2024, 12, 25),
    DateTime(2024, 12, 20),
    DateTime(2024, 12, 15),
    DateTime(2024, 12, 10),
    DateTime(2025, 2, 21),
    DateTime(2025, 2, 20),
    DateTime(2025, 2, 19),
    DateTime(2025, 2, 18),
    DateTime(2025, 2, 17),
    DateTime(2025, 2, 16),
    DateTime(2025, 2, 15),
    DateTime(2025, 2, 14),
    DateTime(2025, 2, 13),
    DateTime(2025, 2, 12),
    DateTime(2025, 2, 11),
    DateTime(2025, 2, 10),
    DateTime(2025, 2, 9),
    DateTime(2025, 2, 8),
    DateTime(2025, 2, 7),
    DateTime(2025, 2, 6),
    DateTime(2025, 2, 5),
    DateTime(2025, 2, 4),
    DateTime(2025, 2, 3),
    DateTime(2025, 2, 2),
    DateTime(2025, 2, 1),
    DateTime(2025, 1, 31),
    DateTime(2025, 1, 30),
    DateTime(2025, 1, 29),
    DateTime(2025, 1, 28)
  ],
);
