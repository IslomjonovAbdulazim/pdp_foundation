import 'package:get/get.dart';
import 'package:pdp_foundation/app/data/providers/dio_manager.dart';
import 'package:pdp_foundation/domain/entities/study/themes_entity.dart';
import 'package:pdp_foundation/domain/respositories/study_repository.dart';

import '../../../utils/helpers/status_code_helper.dart';
import '../../data/repositories/study_repository_imp.dart';

class ThemesController extends GetxController {
  RxList<ThemeEntity> themes = <ThemeEntity>[].obs;
  RxBool isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    load();
  }

  Future<void> load() async {
    isLoading.value = true;

    Get.put<StudyRepository>(
      StudyRepositoryImp(dio: dioInstance),
    );
    final api = Get.find<StudyRepository>();
    final result = await api.themes();
    result.fold(
      (failure) {
        StatusCodeService.showSnackbar(failure.statusCode ?? 505);
      },
      (response) {
        if (response.isNotEmpty) {
          themes.value = response;
        } else {
          StatusCodeService.showSnackbar(505);
        }
      },
    );
    isLoading.value = false;
  }
}
