import 'package:dio/dio.dart';
import 'package:pdp_foundation/app/data/models/home/home_model.dart';
import 'package:retrofit/retrofit.dart';

import '../../../utils/constants/api_constants.dart';
import '../models/screens/login_model.dart';
import '../models/screens/login_response_model.dart';

part 'home_api_client.g.dart';

@RestApi(baseUrl: ApiConstants.baseURL)
abstract class HomeApiClient {
  factory HomeApiClient(Dio dio, {String baseUrl}) = _HomeApiClient;


  @POST(ApiConstants.login)
  Future<HomeModel> home(@Path() String token);
}
