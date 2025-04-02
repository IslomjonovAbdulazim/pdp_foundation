import 'dart:convert';

import 'package:get/get.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import '../../../domain/entities/leaderboard/leaderboard_user_entity.dart';
import '../../../utils/constants/api_constants.dart';
import '../../data/models/leaderboard/leaderboard_user_model.dart';

class LeaderboardController extends GetxController {
  // Observable list of leaderboard users

  Stream<List<LeaderboardUserModel>> connectLeaderboard() {
    // return Stream.value(mockLeaderboard);
    print(ApiConstants.streamURL + ApiConstants.leaderboard);
    final channel = WebSocketChannel.connect(
      Uri.parse(ApiConstants.streamURL + ApiConstants.leaderboard),
    );

    return channel.stream.map((data) {
      // Assuming your data comes in as a JSON-encoded list
      print("-----------------------");
      print("\n\n\n\n\n\n");
      print(data);
      final List<dynamic> jsonList = jsonDecode(data);
      return jsonList
          .map((json) => LeaderboardUserModel.fromJson(json))
          .toList();
    });
  }
}
