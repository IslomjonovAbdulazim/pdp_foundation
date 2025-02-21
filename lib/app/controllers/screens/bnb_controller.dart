import 'package:get/get.dart';

class BnbController extends GetxController {
  final RxInt currentIndex = 0.obs; // Observable index

  void changePage(int index) {
    currentIndex.value = index;
  }
}
