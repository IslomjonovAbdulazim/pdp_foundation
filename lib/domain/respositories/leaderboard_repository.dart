import 'package:dartz/dartz.dart';
import 'package:pdp_foundation/app/data/models/leaderboard/leaderboard_user_model.dart';
import 'package:pdp_foundation/domain/entities/leaderboard/leaderboard_user_entity.dart';
import 'package:pdp_foundation/domain/entities/screens/login_response_entity.dart';

import '../../app/data/models/screens/login_model.dart';
import '../../utils/errors/network_failure.dart';

abstract class LeaderboardRepository {
  Stream<Either<NetworkFailure, List<LeaderboardUserModel>>> students();
}
