import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:pdp_foundation/app/data/models/screens/login_model.dart';
import 'package:pdp_foundation/app/data/models/screens/login_response_model.dart';
import 'package:pdp_foundation/app/data/providers/login_api_client.dart';
import 'package:pdp_foundation/domain/entities/screens/login_response_entity.dart';
import 'package:pdp_foundation/domain/respositories/login_repository.dart';
import 'package:pdp_foundation/utils/errors/network_failure.dart';

import '../../../utils/constants/api_constants.dart';

class LoginRepositoryImp extends LoginRepository {
  final LoginApiClient apiClient;

  LoginRepositoryImp({Dio? dio})
      : apiClient = LoginApiClient(
          dio ??
              Dio(BaseOptions(
                baseUrl: ApiConstants.baseURL,
                connectTimeout: const Duration(seconds: 30),
                receiveTimeout: const Duration(seconds: 30),
              )),
        );

  @override
  Future<Either<NetworkFailure, LoginResponseEntity>> login(
      LoginModel model) async {
    try {
      print("device: ${model.deviceId}");
      print("phone: ${model.phoneNumber}");
      print("1 pass: ${model.password}");
      final response = await apiClient.login(model);
      return Right(response.toEntity());
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
