import 'package:get/get.dart';

import '../../controllers/study/detail_theme_controller.dart';

class DetailThemeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailThemeController());
  }
}
