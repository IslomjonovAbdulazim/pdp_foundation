import 'package:get/get.dart';

import '../../controllers/screens/internal_error_controller.dart';

class InternalErrorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => InternalErrorController());
  }
}
