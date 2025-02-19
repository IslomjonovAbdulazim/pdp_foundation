import 'package:get/get.dart';

import '../../controllers/leaderboard/live_quiz_controller.dart';

class LiveQuizBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LiveQuizController());
  }
}
