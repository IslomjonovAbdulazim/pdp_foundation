import 'package:get/get.dart';
import 'package:pdp_foundation/domain/entities/study/themes_entity.dart';
import 'package:pdp_foundation/domain/entities/study/topic_entity.dart';

import '../../../domain/respositories/study_repository.dart';
import '../../../utils/helpers/status_code_helper.dart';
import '../../data/providers/dio_manager.dart';
import '../../data/repositories/study_repository_imp.dart';

class TopicController extends GetxController {
  Rx<ThemeEntity> theme = mockThemes.first.obs;
  RxBool isLoading = true.obs;
  RxList<TopicEntity> topics = <TopicEntity>[].obs;

  @override
  void onInit() {
    super.onInit();
    load();
  }

  Future<void> load() async {
    theme.value = Get.arguments;
    Get.put<StudyRepository>(
      StudyRepositoryImp(dio: dioInstance),
    );
    final api = Get.find<StudyRepository>();
    final result = await api.topics(theme.value.id);
    result.fold(
      (failure) {
        StatusCodeService.showSnackbar(failure.statusCode ?? 505);
      },
      (response) {
        if (response.isNotEmpty) {
          topics.value = response;
        } else {
          StatusCodeService.showSnackbar(505);
        }
      },
    );
    isLoading.value = false;
  }
}
