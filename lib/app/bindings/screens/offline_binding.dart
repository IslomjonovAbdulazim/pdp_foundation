import 'package:get/get.dart';

import '../../controllers/screens/offline_controller.dart';

class OfflineBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OfflineController());
  }
}
