
import 'package:dio/dio.dart';
import 'package:pdp_foundation/app/data/models/screens/login_model.dart';
import 'package:pdp_foundation/app/data/models/screens/login_response_model.dart';
import 'package:pdp_foundation/domain/entities/screens/login_entity.dart';
import 'package:pdp_foundation/domain/entities/screens/login_response_entity.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import '../../../utils/constants/api_constants.dart';

part 'login_api_client.g.dart';

@RestApi(baseUrl: ApiConstants.baseURL)
abstract class LoginApiClient {
  factory LoginApiClient(Dio dio, {String baseUrl}) = _LoginApiClient;

  @POST(ApiConstants.login)
  Future<LoginResponseModel> login(LoginModel login);

}