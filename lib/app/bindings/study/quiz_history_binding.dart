import 'package:get/get.dart';

import '../../controllers/study/quiz_history_controller.dart';

class QuizHistoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QuizHistoryController());
  }
}
