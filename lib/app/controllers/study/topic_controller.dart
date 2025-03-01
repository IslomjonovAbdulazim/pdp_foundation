import 'package:get/get.dart';
import 'package:pdp_foundation/domain/entities/study/themes_entity.dart';

class TopicController extends GetxController {
  Rx<ThemeEntity> theme = mockThemes.first.obs;
  RxBool isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    load();
  }

  void load() async {
    theme.value = Get.arguments;
    await Future.delayed(const Duration(seconds: 2));
    isLoading.value = false;
  }
}