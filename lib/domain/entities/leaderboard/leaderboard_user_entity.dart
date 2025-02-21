class LeaderboardUserEntity {
  final String userID;
  final int points;
  final int rank;

  LeaderboardUserEntity({
    required this.userID,
    required this.points,
    required this.rank,
  });
}

List<LeaderboardUserEntity> mockLeaderboard = [
  LeaderboardUserEntity(userID: "Kamron Tojiev", points: 4998, rank: 1),
  LeaderboardUserEntity(userID: "Umid Sattorov", points: 4948, rank: 2),
  LeaderboardUserEntity(userID: "Azizbek Ibragimov", points: 4847, rank: 3),
  LeaderboardUserEntity(userID: "Dilshod Ibragimov", points: 4686, rank: 4),
  LeaderboardUserEntity(userID: "Farrux Sattorov", points: 4252, rank: 5),
  LeaderboardUserEntity(userID: "Dilshod Tojiev", points: 4138, rank: 6),
  LeaderboardUserEntity(userID: "Farrux Rakhimov", points: 4017, rank: 7),
  LeaderboardUserEntity(userID: "Dilshod Rakhimov", points: 3848, rank: 8),
  LeaderboardUserEntity(userID: "Shoxrux Nazarov", points: 3724, rank: 9),
  LeaderboardUserEntity(userID: "Sardor Rakhimov", points: 3280, rank: 10),
  LeaderboardUserEntity(userID: "Sardor Qodirov", points: 3203, rank: 11),
  LeaderboardUserEntity(userID: "Farrux Rustamov", points: 3074, rank: 12),
  LeaderboardUserEntity(userID: "Samandar Ibragimov", points: 3052, rank: 13),
  LeaderboardUserEntity(userID: "Bekzod Karimov", points: 2854, rank: 14),
  LeaderboardUserEntity(userID: "Shahzod Xasanov", points: 2763, rank: 15),
  LeaderboardUserEntity(userID: "Sardor Nazarov", points: 2145, rank: 16),
  LeaderboardUserEntity(userID: "Sarvar Tojiev", points: 2137, rank: 17),
  LeaderboardUserEntity(userID: "Bekzod Yuldashev", points: 2110, rank: 18),
  LeaderboardUserEntity(userID: "Ulug'bek Nazarov", points: 1114, rank: 19),
  LeaderboardUserEntity(userID: "Sardor Tursunov", points: 1069, rank: 20),
];
