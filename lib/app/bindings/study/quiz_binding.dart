import 'package:get/get.dart';

import '../../controllers/study/quiz_controller.dart';

class QuizBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QuizController());
  }
}
