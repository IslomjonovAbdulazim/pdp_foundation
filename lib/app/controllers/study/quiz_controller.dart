import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';
import 'package:pdp_foundation/app/routes/app_routes.dart';
import 'package:pdp_foundation/domain/entities/study/quiz_result_entity.dart';

import '../../../domain/entities/study/quiz_entity.dart';
import '../../../domain/entities/study/topic_entity.dart';
import '../../../domain/respositories/study_repository.dart';
import '../../../utils/constants/sound_constants.dart';
import '../../../utils/constants/title_constants.dart';
import '../../../utils/extenstions/color_extension.dart';
import '../../../utils/helpers/status_code_helper.dart';
import '../../data/providers/dio_manager.dart';
import '../../data/repositories/study_repository_imp.dart';

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
  DateTime start = DateTime.now();
  AudioPlayer player = AudioPlayer();

  QuizEntity get question => quiz[currentQuestion.value];

  String get correct => question.correct.trim();

  bool get isCorrect => correct == selected.value.trim();

  bool get isSelected => selected.value.isNotEmpty;

  Color variantColor(String option, BuildContext context) {
    if (isSelected) {
      if (option.trim() == selected.value.trim()) {
        if (quizStatus.value == QuizStatusEnum.correct) {
          return context.greenColor;
        } else {
          return context.error;
        }
      } else if (option.trim() == correct.trim()) {
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
    Get.put<StudyRepository>(
      StudyRepositoryImp(dio: dioInstance),
    );
    final api = Get.find<StudyRepository>();
    final result = await api.quiz(topic.value.id);
    result.fold(
      (failure) {
        StatusCodeService.showSnackbar(failure.statusCode ?? 505);
      },
      (response) {
        if (response.isNotEmpty) {
          quiz.value = response;
        } else {
          StatusCodeService.showSnackbar(505);
        }
      },
    );
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
    if (quizStatus.value == QuizStatusEnum.notSelected) return;
    if (currentQuestion.value < quiz.length - 1) {
      currentQuestion.value += 1;
      selected.value = "";
      quizStatus.value = QuizStatusEnum.notSelected;
    } else {
      QuizResultEntity result = QuizResultEntity(
        quizID: topic.value.id,
        topicID: topic.value.id,
        corrects: List.from(corrects),
        wrongs: List.from(wrongs),
        start: start,
        end: DateTime.now(),
        topic: topic.value.title,
      );
      Get.offNamed(AppRoutes.quizResult, arguments: result);
    }
  }

  String get status {
    if (currentQuestion.value == quiz.length - 1) {
      return TitleConstants.finishQuiz;
    }
    if (selected.value.isNotEmpty) return TitleConstants.next;
    return TitleConstants.select;
  }
}
