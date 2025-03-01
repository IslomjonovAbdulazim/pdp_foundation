import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:pdp_foundation/app/data/providers/study_api_client.dart';
import 'package:pdp_foundation/app/data/repositories/study_repository_imp.dart';
import 'package:pdp_foundation/domain/respositories/study_repository.dart';

import '../../../utils/constants/api_constants.dart';

class StudyImplBinding extends Bindings {
  @override
  void dependencies() {
    Dio dio = Dio(BaseOptions(
      baseUrl: ApiConstants.baseURL,
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
    ));

    Get.put<StudyApiClient>(StudyApiClient(dio));
    Get.put<StudyRepository>(StudyRepositoryImp(dio: dio));
  }
}
