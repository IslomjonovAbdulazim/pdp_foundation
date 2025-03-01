import 'package:get/get.dart';

class ThemesController extends GetxController {
  List<ThemesController> themes = [];
  RxBool isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    load();
  }

  Future<void> load() async {
    isLoading.value = true;
    await Future.delayed(const Duration(seconds: 2));
    isLoading.value = false;
  }
}
