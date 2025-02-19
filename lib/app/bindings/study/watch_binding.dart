import 'package:get/get.dart';

import '../../controllers/study/watch_controller.dart';

class WatchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WatchController());
  }
}
