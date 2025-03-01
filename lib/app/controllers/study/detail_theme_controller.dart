import 'package:get/get.dart';
import 'package:pdp_foundation/domain/entities/study/topic_entity.dart';

class DetailThemeController extends GetxController {
  Rx<TopicEntity> topic = mockTopicsTheme.first.obs;
  RxBool isLoading = true.obs;

  void load() async {
    isLoading.value = true;
    await Future.delayed(const Duration(seconds: 1));
    topic.value = Get.arguments;
    isLoading.value = false;
  }
}

