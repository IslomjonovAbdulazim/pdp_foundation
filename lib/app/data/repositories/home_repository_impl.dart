import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:pdp_foundation/app/data/models/home/home_model.dart';
import 'package:pdp_foundation/app/data/models/screens/login_model.dart';
import 'package:pdp_foundation/app/data/models/screens/login_response_model.dart';
import 'package:pdp_foundation/app/data/providers/home_api_client.dart';
import 'package:pdp_foundation/app/data/providers/login_api_client.dart';
import 'package:pdp_foundation/domain/entities/screens/login_response_entity.dart';
import 'package:pdp_foundation/domain/respositories/login_repository.dart';
import 'package:pdp_foundation/utils/errors/network_failure.dart';
import 'package:pdp_foundation/utils/services/token_service.dart';

import '../../../domain/respositories/home_repository.dart';
import '../../../utils/constants/api_constants.dart';

class HomeRepositoryImp extends HomeRepository {
  final HomeApiClient apiClient;

  HomeRepositoryImp({Dio? dio})
      : apiClient = HomeApiClient(
    dio ??
        Dio(BaseOptions(
          baseUrl: ApiConstants.baseURL,
          connectTimeout: const Duration(seconds: 30),
          receiveTimeout: const Duration(seconds: 30),
        )),
  );

  @override
  Future<Either<NetworkFailure, HomeModel>> home() async {
    try {
      final response = await apiClient.home(TokenService.to.token);
      return Right(response);
    } on DioException catch (e) {
      return Left(
        NetworkFailure(
          message: e.response?.statusMessage,
          statusCode: e.response?.statusCode,
        ),
      );
    }
  }
}
