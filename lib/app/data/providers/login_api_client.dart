import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../utils/constants/api_constants.dart';
import '../models/screens/login_model.dart';
import '../models/screens/login_response_model.dart';

part 'login_api_client.g.dart';

@RestApi(baseUrl: ApiConstants.baseURL)
abstract class LoginApiClient {
  factory LoginApiClient(Dio dio, {String baseUrl}) = _LoginApiClient;


  @POST(ApiConstants.login)
  Future<LoginResponseModel> login(@Body() LoginModel login);
}
