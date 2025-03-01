import 'package:get/get.dart';
import 'package:pdp_foundation/domain/entities/study/themes_entity.dart';
import 'package:pdp_foundation/domain/entities/study/topic_entity.dart';

class TopicController extends GetxController {
  Rx<ThemeEntity> theme = mockThemes.first.obs;
  RxBool isLoading = true.obs;
  RxList<TopicEntity> topics = <TopicEntity>[].obs;

  @override
  void onInit() {
    super.onInit();
    load();
  }

  void load() async {
    theme.value = Get.arguments;
    print("Started");
    await Future.delayed(const Duration(seconds: 2));
    topics.value = mockTopicsTheme;
    print("End");
    isLoading.value = false;
  }
}