import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:pdp_foundation/app/data/models/screens/login_model.dart';
import 'package:pdp_foundation/app/data/repositories/login_repository_iml.dart';
import 'package:pdp_foundation/domain/respositories/login_repository.dart';
import 'package:pdp_foundation/utils/helpers/device_helper.dart';

import '../../../utils/helpers/status_code_helper.dart';
import '../../../utils/services/token_service.dart';
import '../../data/providers/dio_manager.dart';
import '../../routes/app_routes.dart';

class AuthController extends GetxController {
  Rx<TextEditingController> phoneNumber = TextEditingController().obs;
  Rx<TextEditingController> password = TextEditingController().obs;
  Rx<FocusNode> phoneFocus = FocusNode().obs;
  Rx<FocusNode> passwordFocus = FocusNode().obs;
  RxBool isLoading = false.obs;

  Future<void> login() async {
    isLoading.value = true;
    Get.put<LoginRepository>(
      LoginRepositoryImp(dio: dioInstance),
    );
    final api = Get.find<LoginRepository>();
    final login = LoginModel(
      deviceId: await DeviceHelper.getDeviceId(),
      phoneNumber: phoneNumber.value.text.trim(),
      password: password.value.text.trim(),
    );
    final result = await api.login(login);
    isLoading.value = false;

    result.fold(
      (failure) {
        StatusCodeService.showSnackbar(failure.statusCode ?? 505);
      },
      (response) {
        TokenService.to.saveToken(response.accessToken);
        TokenService.to.saveRefreshToken(response.refreshToken);
        Get.offAllNamed(AppRoutes.bnb);
      },
    );
  }
}
