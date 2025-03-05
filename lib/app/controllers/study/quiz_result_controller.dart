import 'package:get/get.dart';
import 'package:pdp_foundation/domain/entities/study/quiz_result_entity.dart';

class QuizResultController extends GetxController {
  RxBool isLoading = true.obs;
  late Rx<QuizResultEntity> result;

  @override
  void onInit() {
    isLoading.value = true;
    result = (Get.arguments as QuizResultEntity).obs;
    isLoading.value = false;
    super.onInit();
  }

  int get total => result.value.wrongs.length + result.value.corrects.length;

  String get percentage =>
      "${((result.value.corrects.length / total) * 100).toStringAsFixed(0)}%";
}
