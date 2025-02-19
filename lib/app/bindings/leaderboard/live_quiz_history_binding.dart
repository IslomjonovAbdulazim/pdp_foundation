import 'package:get/get.dart';

import '../../controllers/leaderboard/live_quiz_history_controller.dart';

class LiveQuizHistoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LiveQuizHistoryController());
  }
}
