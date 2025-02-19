import 'package:get/get.dart';

import '../../controllers/leaderboard/live_quiz_result_controller.dart';

class LiveQuizResultBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LiveQuizResultController());
  }
}
