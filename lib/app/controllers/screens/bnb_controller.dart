import 'package:get/get.dart';

class BnbController extends GetxController {
  final RxInt currentIndex = 2.obs; // Observable index

  void changePage(int index) {
    currentIndex.value = index;
  }
}
