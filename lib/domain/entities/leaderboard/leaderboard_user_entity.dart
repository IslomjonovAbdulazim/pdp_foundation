import '../../../app/data/models/leaderboard/leaderboard_user_model.dart';

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

List<LeaderboardUserModel> mockLeaderboard = [
  const LeaderboardUserModel(
      id: 1,
      rating: 4998,
      place: 1,
      firstName: "Kamron",
      lastName: "Tojiev",
      avatar: "https://randomuser.me/api/portraits/men/1.jpg"),
  const LeaderboardUserModel(
      id: 2,
      rating: 4948,
      place: 2,
      firstName: "Umid",
      lastName: "Sattorov",
      avatar: "https://randomuser.me/api/portraits/men/2.jpg"),
  const LeaderboardUserModel(
      id: 3,
      rating: 4847,
      place: 3,
      firstName: "Azizbek",
      lastName: "Ibragimov",
      avatar: "https://randomuser.me/api/portraits/men/3.jpg"),
  const LeaderboardUserModel(
      id: 4,
      rating: 4686,
      place: 4,
      firstName: "Dilshod",
      lastName: "Ibragimov",
      avatar: "https://randomuser.me/api/portraits/men/4.jpg"),
  const LeaderboardUserModel(
      id: 5,
      rating: 4252,
      place: 5,
      firstName: "Farrux",
      lastName: "Sattorov",
      avatar: "https://randomuser.me/api/portraits/men/5.jpg"),
  const LeaderboardUserModel(
      id: 6,
      rating: 4138,
      place: 6,
      firstName: "Dilshod",
      lastName: "Tojiev",
      avatar: "https://randomuser.me/api/portraits/men/6.jpg"),
  const LeaderboardUserModel(
      id: 7,
      rating: 4017,
      place: 7,
      firstName: "Farrux",
      lastName: "Rakhimov",
      avatar: "https://randomuser.me/api/portraits/men/7.jpg"),
  const LeaderboardUserModel(
      id: 8,
      rating: 3848,
      place: 8,
      firstName: "Dilshod",
      lastName: "Rakhimov",
      avatar: "https://randomuser.me/api/portraits/men/8.jpg"),
  const LeaderboardUserModel(
      id: 9,
      rating: 3724,
      place: 9,
      firstName: "Shoxrux",
      lastName: "Nazarov",
      avatar: "https://randomuser.me/api/portraits/men/9.jpg"),
  const LeaderboardUserModel(
      id: 10,
      rating: 3280,
      place: 10,
      firstName: "Sardor",
      lastName: "Rakhimov",
      avatar: "https://randomuser.me/api/portraits/men/10.jpg"),
  const LeaderboardUserModel(
      id: 11,
      rating: 3203,
      place: 11,
      firstName: "Sardor",
      lastName: "Qodirov",
      avatar: "https://randomuser.me/api/portraits/men/11.jpg"),
  const LeaderboardUserModel(
      id: 12,
      rating: 3074,
      place: 12,
      firstName: "Farrux",
      lastName: "Rustamov",
      avatar: "https://randomuser.me/api/portraits/men/12.jpg"),
  const LeaderboardUserModel(
      id: 13,
      rating: 3052,
      place: 13,
      firstName: "Samandar",
      lastName: "Ibragimov",
      avatar: "https://randomuser.me/api/portraits/men/13.jpg"),
  const LeaderboardUserModel(
      id: 14,
      rating: 2854,
      place: 14,
      firstName: "Bekzod",
      lastName: "Karimov",
      avatar: "https://randomuser.me/api/portraits/men/14.jpg"),
  const LeaderboardUserModel(
      id: 15,
      rating: 2763,
      place: 15,
      firstName: "Shahzod",
      lastName: "Xasanov",
      avatar: "https://randomuser.me/api/portraits/men/15.jpg"),
  const LeaderboardUserModel(
      id: 16,
      rating: 2145,
      place: 16,
      firstName: "Sardor",
      lastName: "Nazarov",
      avatar: "https://randomuser.me/api/portraits/men/16.jpg"),
  const LeaderboardUserModel(
      id: 17,
      rating: 2137,
      place: 17,
      firstName: "Sarvar",
      lastName: "Tojiev",
      avatar: "https://randomuser.me/api/portraits/men/17.jpg"),
  const LeaderboardUserModel(
      id: 18,
      rating: 2110,
      place: 18,
      firstName: "Bekzod",
      lastName: "Yuldashev",
      avatar: "https://randomuser.me/api/portraits/men/18.jpg"),
  const LeaderboardUserModel(
      id: 19,
      rating: 1114,
      place: 19,
      firstName: "Ulug'bek",
      lastName: "Nazarov",
      avatar: "https://randomuser.me/api/portraits/men/19.jpg"),
  const LeaderboardUserModel(
      id: 20,
      rating: 1069,
      place: 20,
      firstName: "Sardor",
      lastName: "Tursunov",
      avatar: "https://randomuser.me/api/portraits/men/20.jpg"),
];
