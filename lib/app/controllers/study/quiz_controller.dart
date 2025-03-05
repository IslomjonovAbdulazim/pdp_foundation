import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';
import 'package:pdp_foundation/domain/entities/screens/quiz_entity.dart';
import 'package:pdp_foundation/domain/entities/study/topic_entity.dart';
import 'package:pdp_foundation/utils/constants/sound_constants.dart';
import 'package:pdp_foundation/utils/constants/title_constants.dart';
import 'package:pdp_foundation/utils/extenstions/color_extension.dart';

enum QuizStatusEnum { notSelected, wrong, correct }

class QuizController extends GetxController {
  RxBool isLoading = false.obs;
  Rx<TopicEntity> topic = mockTopicsTheme.first.obs;
  RxInt currentQuestion = 0.obs;
  Rx<QuizStatusEnum> quizStatus = QuizStatusEnum.notSelected.obs;
  RxString selected = "".obs;
  RxList<QuizEntity> quiz = <QuizEntity>[].obs;
  RxString buttonText = TitleConstants.select.obs;
  Set<int> corrects = {};
  Set<int> wrongs = {};
  AudioPlayer player = AudioPlayer();

  QuizEntity get question => quiz[currentQuestion.value];

  String get correct => question.correct;

  bool get isCorrect => correct == selected.value;

  bool get isSelected => selected.value.isNotEmpty;

  Color variantColor(String option, BuildContext context) {
    if (isSelected) {
      if (option == selected.value) {
        if (quizStatus.value == QuizStatusEnum.correct) {
          return context.greenColor;
        } else {
          return context.error;
        }
      } else if (option == correct) {
        return context.greenColor;
      }
    }
    return context.dividerColor;
  }

  @override
  void onInit() {
    init();
    super.onInit();
  }

  void init() async {
    isLoading.value = true;
    quiz.value = quizzes;
    isLoading.value = false;
  }

  void selectVariant(String variant) {
    selected.value = variant;
    if (isCorrect) {
      player.setAsset(SoundConstants.correct);
      player.play();
      corrects.add(question.id);
      quizStatus.value = QuizStatusEnum.correct;
    } else {
      quizStatus.value = QuizStatusEnum.wrong;
      wrongs.add(question.id);
      player.setAsset(SoundConstants.wrong);
      player.play();
    }
  }

  void nextQuestion() async {
    if (currentQuestion.value < quiz.length - 1) {
      currentQuestion.value += 1;
      selected.value = "";
      quizStatus.value = QuizStatusEnum.notSelected;
    } else {
      print("Done");
    }
  }

  void done(bool result) {}

  String get status {
    if (currentQuestion.value == quiz.length - 1)
      return TitleConstants.finishQuiz;
    if (selected.value.isNotEmpty) return TitleConstants.next;
    return TitleConstants.select;
  }
}
