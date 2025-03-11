import 'package:dio/dio.dart';
import 'package:pdp_foundation/app/data/models/leaderboard/leaderboard_user_model.dart';
import 'package:pdp_foundation/domain/entities/leaderboard/leaderboard_user_entity.dart';
import 'package:retrofit/retrofit.dart';

import '../../../utils/constants/api_constants.dart';

part 'leaderboard_api_client.g.dart';

@RestApi(baseUrl: ApiConstants.baseURL)
abstract class LeaderboardApiClient {
  factory LeaderboardApiClient(Dio dio, {String baseUrl}) = _LeaderboardApiClient;

  @GET(ApiConstants.leaderboard)
  Stream<List<LeaderboardUserModel>> leaderboard();
}
