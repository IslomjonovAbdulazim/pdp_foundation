class LeaderboardUserEntity {
  final int userID;
  final int points;
  final int rank;
  final String image;
  final String fullname;

  LeaderboardUserEntity({
    required this.userID,
    required this.points,
    required this.rank,
    required this.image,
    required this.fullname,
  });
}

List<LeaderboardUserEntity> mockLeaderboard = [
  LeaderboardUserEntity(userID: 1, points: 4998, rank: 1, image: "https://randomuser.me/api/portraits/men/1.jpg", fullname: "Kamron Tojiev"),
  LeaderboardUserEntity(userID: 2, points: 4948, rank: 2, image: "https://randomuser.me/api/portraits/men/2.jpg", fullname: "Umid Sattorov"),
  LeaderboardUserEntity(userID: 3, points: 4847, rank: 3, image: "https://randomuser.me/api/portraits/men/3.jpg", fullname: "Azizbek Ibragimov"),
  LeaderboardUserEntity(userID: 4, points: 4686, rank: 4, image: "https://randomuser.me/api/portraits/men/4.jpg", fullname: "Dilshod Ibragimov"),
  LeaderboardUserEntity(userID: 5, points: 4252, rank: 5, image: "https://randomuser.me/api/portraits/men/5.jpg", fullname: "Farrux Sattorov"),
  LeaderboardUserEntity(userID: 6, points: 4138, rank: 6, image: "https://randomuser.me/api/portraits/men/6.jpg", fullname: "Dilshod Tojiev"),
  LeaderboardUserEntity(userID: 7, points: 4017, rank: 7, image: "https://randomuser.me/api/portraits/men/7.jpg", fullname: "Farrux Rakhimov"),
  LeaderboardUserEntity(userID: 8, points: 3848, rank: 8, image: "https://randomuser.me/api/portraits/men/8.jpg", fullname: "Dilshod Rakhimov"),
  LeaderboardUserEntity(userID: 9, points: 3724, rank: 9, image: "https://randomuser.me/api/portraits/men/9.jpg", fullname: "Shoxrux Nazarov"),
  LeaderboardUserEntity(userID: 10, points: 3280, rank: 10, image: "https://randomuser.me/api/portraits/men/10.jpg", fullname: "Sardor Rakhimov"),
  LeaderboardUserEntity(userID: 11, points: 3203, rank: 11, image: "https://randomuser.me/api/portraits/men/11.jpg", fullname: "Sardor Qodirov"),
  LeaderboardUserEntity(userID: 12, points: 3074, rank: 12, image: "https://randomuser.me/api/portraits/men/12.jpg", fullname: "Farrux Rustamov"),
  LeaderboardUserEntity(userID: 13, points: 3052, rank: 13, image: "https://randomuser.me/api/portraits/men/13.jpg", fullname: "Samandar Ibragimov"),
  LeaderboardUserEntity(userID: 14, points: 2854, rank: 14, image: "https://randomuser.me/api/portraits/men/14.jpg", fullname: "Bekzod Karimov"),
  LeaderboardUserEntity(userID: 15, points: 2763, rank: 15, image: "https://randomuser.me/api/portraits/men/15.jpg", fullname: "Shahzod Xasanov"),
  LeaderboardUserEntity(userID: 16, points: 2145, rank: 16, image: "https://randomuser.me/api/portraits/men/16.jpg", fullname: "Sardor Nazarov"),
  LeaderboardUserEntity(userID: 17, points: 2137, rank: 17, image: "https://randomuser.me/api/portraits/men/17.jpg", fullname: "Sarvar Tojiev"),
  LeaderboardUserEntity(userID: 18, points: 2110, rank: 18, image: "https://randomuser.me/api/portraits/men/18.jpg", fullname: "Bekzod Yuldashev"),
  LeaderboardUserEntity(userID: 19, points: 1114, rank: 19, image: "https://randomuser.me/api/portraits/men/19.jpg", fullname: "Ulug'bek Nazarov"),
  LeaderboardUserEntity(userID: 20, points: 1069, rank: 20, image: "https://randomuser.me/api/portraits/men/20.jpg", fullname: "Sardor Tursunov"),
];

