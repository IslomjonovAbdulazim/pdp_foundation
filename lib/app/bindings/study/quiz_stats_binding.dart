import 'package:get/get.dart';

import '../../controllers/study/quiz_stats_controller.dart';

class QuizStatsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QuizStatsController());
  }
}
