import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pdp_foundation/domain/entities/study/article_entity.dart';
import 'package:pdp_foundation/domain/entities/study/topic_entity.dart';

import '../../../domain/respositories/study_repository.dart';
import '../../../utils/helpers/status_code_helper.dart';
import '../../data/providers/dio_manager.dart';
import '../../data/repositories/study_repository_imp.dart';

class DetailThemeController extends GetxController {
  Rx<TopicEntity> topic = mockTopicsTheme.first.obs;
  RxList<ArticleContentEntity> article = <ArticleContentEntity>[].obs;
  RxBool isLoading = true.obs;

  @override
  void onInit() {
    load();
    super.onInit();
  }

  void load() async {
    isLoading.value = true;
    await Future.delayed(const Duration(seconds: 1));
    topic.value = Get.arguments;
    Get.put<StudyRepository>(
      StudyRepositoryImp(dio: dioInstance),
    );
    print("\n\n\n\n\n\n\n\ndocument");
    final api = Get.find<StudyRepository>();
    final result = await api.document(topic.value.documentID);
    result.fold(
      (failure) {
        StatusCodeService.showSnackbar(failure.statusCode ?? 505);
      },
      (response) {
        if (response.isNotEmpty) {
          article.value = response;
        } else {
          StatusCodeService.showSnackbar(505);
        }
      },
    );
    isLoading.value = false;
  }
}
