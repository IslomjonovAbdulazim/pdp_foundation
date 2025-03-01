import 'package:get/get.dart';

class ThemesController extends GetxController {
  List<ThemesController> themes = [];
  RxBool isLoading = false.obs;

  @override
  void onInit() {
    load();
    super.onInit();
  }

  void load() async {
    isLoading = true.obs;
    await Future.delayed(const Duration(seconds: 2));
    isLoading = false.obs;
  }
}
