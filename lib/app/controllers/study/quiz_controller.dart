import 'package:get/get.dart';
import 'package:pdp_foundation/app/data/models/quiz/quiz_model.dart';

class QuizController extends GetxController {
  RxBool isLoading = false.obs;
  Rx<QuizModel> quiz = QuizModel(id: -1, questions: []).obs;

  @override
  void onInit() {
    init();
    super.onInit();
  }

  void init() async {
    isLoading.value = true;
    quiz.value = mockQuiz;
    isLoading.value = false;
  }
}
