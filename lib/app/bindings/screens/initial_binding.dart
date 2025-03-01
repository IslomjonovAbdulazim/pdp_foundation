import 'package:get/get.dart';
import 'package:pdp_foundation/app/bindings/home/home_binding.dart';
import 'package:pdp_foundation/app/bindings/leaderboard/leaderboard_binding.dart';
import 'package:pdp_foundation/app/controllers/study/themes_controller.dart';
import 'package:pdp_foundation/app/data/providers/study_api_client.dart';
import 'package:pdp_foundation/app/data/repositories/study_repository_imp.dart';

import '../../../domain/respositories/study_repository.dart';
import '../../controllers/screens/bnb_controller.dart';
import '../../data/providers/dio_manager.dart';
import '../study/study_impl_binding.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() async {
    configureDio();
    Get.put(BNBController());
    Get.put(HomeBinding());
    Get.put(LeaderboardBinding());
    Get.put(ThemesController());
    // Get.put<StudyApiClient>(StudyApiClient(dioInstance), permanent: true);

  }
}
