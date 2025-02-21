class UserInformation {
  final String firstname;
  final String lastname;
  final String image;
  final int streaks;
  final int points;

  UserInformation({
    required this.firstname,
    required this.lastname,
    required this.image,
    required this.streaks,
    required this.points,
  });
}

class ActivityLevel {
  final int userID;
  final DateTime time;
  final int quizSolved;

  ActivityLevel({
    required this.userID,
    required this.time,
    required this.quizSolved,
  });
}

class DailyChallenges {
  final int userID;
  final int challengeID;
  final bool isSolved;
  final String title;
  final String description;
  final int points;

  DailyChallenges({
    required this.title,
    required this.challengeID,
    required this.description,
    required this.points,
    required this.userID,
    required this.isSolved,
  });
}

class LastReadTheme {
  final int themeID;
  final String title;
  final int progress;

  LastReadTheme({
    required this.themeID,
    required this.title,
    required this.progress,
  });
}

// ---------------------------------------------
// Mock Data for User, Activity Levels, Challenges, and Last Read Theme
// ---------------------------------------------

UserInformation mockUser = UserInformation(
  firstname: "Azim",
  lastname: "Islomjonov",
  image: "https://randomuser.me/api/portraits/men/1.jpg",
  streaks: 5,
  points: 1250,
);

List<ActivityLevel> mockActivityLevels = [
  ActivityLevel(userID: 1, time: DateTime.now().subtract(const Duration(days: 1)), quizSolved: 3),
  ActivityLevel(userID: 1, time: DateTime.now().subtract(const Duration(days: 2)), quizSolved: 2),
  ActivityLevel(userID: 1, time: DateTime.now().subtract(const Duration(days: 3)), quizSolved: 4),
  ActivityLevel(userID: 1, time: DateTime.now().subtract(const Duration(days: 4)), quizSolved: 1),
  ActivityLevel(userID: 1, time: DateTime.now().subtract(const Duration(days: 5)), quizSolved: 5),
  ActivityLevel(userID: 1, time: DateTime.now().subtract(const Duration(days: 6)), quizSolved: 0),
  ActivityLevel(userID: 1, time: DateTime.now().subtract(const Duration(days: 7)), quizSolved: 3),
];

List<DailyChallenges> mockDailyChallenges = [
  DailyChallenges(
    userID: 1,
    challengeID: 101,
    isSolved: false,
    title: "Solve 3 HTML Questions",
    description: "Answer 3 HTML-related quiz questions correctly.",
    points: 50,
  ),
  DailyChallenges(
    userID: 1,
    challengeID: 102,
    isSolved: true,
    title: "Watch a CSS Tutorial",
    description: "Watch a 5-minute tutorial on CSS fundamentals.",
    points: 30,
  ),
  DailyChallenges(
    userID: 1,
    challengeID: 103,
    isSolved: false,
    title: "Read an Article on Flexbox",
    description: "Complete the article about CSS Flexbox.",
    points: 40,
  ),
  DailyChallenges(
    userID: 1,
    challengeID: 104,
    isSolved: true,
    title: "Complete a JavaScript Coding Challenge",
    description: "Write a JavaScript function to reverse a string.",
    points: 75,
  ),
];

LastReadTheme mockLastReadTheme = LastReadTheme(
  themeID: 3,
  title: "CSS Flexbox & Grid",
  progress: 75, // Progress in percentage
);
