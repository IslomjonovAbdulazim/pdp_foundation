import 'package:get/get.dart';

import '../../controllers/screens/bnb_controller.dart';
import '../../data/providers/dio_manager.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() async {
    configureDio();
    Get.put(BNBController());
    // Get.put<HomeApiClient>(HomeApiClient(dioInstance), permanent: true);
    // Get.put<HomeRepository>(HomeRepositoryImpl(dio: dioInstance));
  }
}
