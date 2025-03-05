import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:pdp_foundation/app/data/models/quiz/question_model.dart';
import 'package:pdp_foundation/app/data/models/quiz/quiz_model.dart';
import 'package:pdp_foundation/utils/constants/title_constants.dart';
import 'package:pdp_foundation/utils/enums/quiz.dart';

class QuizController extends GetxController {
  RxBool isLoading = false.obs;
  RxInt currentQuestion = 0.obs;
  Rx<QuizModel> quiz = QuizModel(id: -1, questions: []).obs;
  Rx<QuizButtonStatus> isSelected = QuizButtonStatus.select.obs;
  Rx<TextEditingController> controller = TextEditingController().obs;
  Rx<FocusNode> focus = FocusNode().obs;
  RxString buttonText = TitleConstants.select.obs;
  RxBool? result;
  List<int> corrects = [];
  List<int> wrongs = [];

  @override
  void onInit() {
    init();
    controller.value.addListener(() {
      buttonText.value = status;
    });
    super.onInit();
  }

  void init() async {
    isLoading.value = true;
    quiz.value = mockQuiz;
    isLoading.value = false;
  }

  QuestionModel get question => quiz.value.questions[currentQuestion.value];

  void nextQuestion() async {
    if (currentQuestion.value < quiz.value.questions.length - 1) {
      currentQuestion++;
    } else {
      print("Done");
    }
  }

  void done(bool result) {}

  String get status {
    String input = controller.value.text.trim();
    if (input.isNotEmpty) return TitleConstants.check;
    switch (isSelected.value) {
      case QuizButtonStatus.select:
        return TitleConstants.select;
      case QuizButtonStatus.check:
        return TitleConstants.check;
      case QuizButtonStatus.next:
        return TitleConstants.next;
    }
  }
}
