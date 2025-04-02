import 'package:get/get.dart';
import 'package:pdp_foundation/app/controllers/home/home_controller.dart';
import 'package:pdp_foundation/app/controllers/leaderboard/leaderboard_controller.dart';

import '../../../domain/respositories/home_repository.dart';
import '../../../domain/respositories/study_repository.dart';
import '../../../utils/services/connectivity_service.dart';
import '../../../utils/services/token_service.dart';
import '../../controllers/screens/bnb_controller.dart';
import '../../controllers/study/themes_controller.dart';
import '../../data/providers/dio_manager.dart';
import '../../data/providers/study_api_client.dart';
import '../../data/repositories/home_repository_impl.dart';
import '../../data/repositories/study_repository_imp.dart';
import '../home/home_binding.dart';
import '../leaderboard/leaderboard_binding.dart';
import '../study/study_impl_binding.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    // Make sure dio is configured before registering related dependencies.
    configureDio();

    // Home
    Get.put(HomeController());

    // Register controllers and services synchronously.
    Get.put(BNBController());
    Get.put(LeaderboardController());

    // For asynchronous initialization, use putAsync.

    Get.put(ConnectivityService());

    // Study dependencies
    Get.put(ThemesController());
  }
}
