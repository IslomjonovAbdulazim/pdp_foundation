import 'package:get/get.dart';
import 'package:pdp_foundation/app/controllers/study/topic_controller.dart';

class TopicBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TopicController());
  }
}
