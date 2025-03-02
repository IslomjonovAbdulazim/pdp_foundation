import 'package:get/get.dart';

import '../../controllers/screens/loading_controller.dart';

class LoadingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoadingController());
  }
}
