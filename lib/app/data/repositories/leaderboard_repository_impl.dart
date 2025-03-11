import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:pdp_foundation/app/data/models/leaderboard/leaderboard_user_model.dart';
import 'package:pdp_foundation/app/data/models/screens/login_model.dart';
import 'package:pdp_foundation/app/data/models/screens/login_response_model.dart';
import 'package:pdp_foundation/app/data/providers/leaderboard_api_client.dart';
import 'package:pdp_foundation/app/data/providers/login_api_client.dart';
import 'package:pdp_foundation/domain/entities/leaderboard/leaderboard_user_entity.dart';
import 'package:pdp_foundation/domain/entities/screens/login_response_entity.dart';
import 'package:pdp_foundation/domain/respositories/leaderboard_repository.dart';
import 'package:pdp_foundation/domain/respositories/login_repository.dart';
import 'package:pdp_foundation/utils/errors/network_failure.dart';

import '../../../utils/constants/api_constants.dart';

class LeaderboardRepositoryImpl extends LeaderboardRepository {
  final LeaderboardApiClient apiClient;

  LeaderboardRepositoryImpl({Dio? dio})
      : apiClient = LeaderboardApiClient(
    dio ??
        Dio(BaseOptions(
          baseUrl: ApiConstants.baseURL,
          connectTimeout: const Duration(seconds: 30),
          receiveTimeout: const Duration(seconds: 30),
        )),
  );

  @override
  Stream<Either<NetworkFailure, List<LeaderboardUserModel>>> students() async* {
    try {
      await for (final response in apiClient.leaderboard()) {
        yield Right(response);
      }
    } on DioException catch (e) {
      yield Left(
        NetworkFailure(
          message: e.response?.statusMessage ?? "Unknown error",
          statusCode: e.response?.statusCode ?? 0,
        ),
      );
    }
  }

}
