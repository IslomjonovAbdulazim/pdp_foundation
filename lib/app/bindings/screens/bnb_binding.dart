import 'package:get/get.dart';

import '../../controllers/screens/bnb_controller.dart';

class BNBBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BNBController());
  }
}
