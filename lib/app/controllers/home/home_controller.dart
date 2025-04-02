import 'dart:convert';

import 'package:get/get.dart';
import 'package:pdp_foundation/app/data/models/home/home_model.dart';
import 'package:pdp_foundation/app/data/repositories/home_repository_impl.dart';
import 'package:pdp_foundation/domain/respositories/home_repository.dart';
import 'package:pdp_foundation/utils/services/token_service.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import '../../../utils/constants/api_constants.dart';
import '../../../utils/helpers/status_code_helper.dart';
import '../../data/providers/dio_manager.dart';

class HomeController extends GetxController {
  Rx<HomeModel>? home;
  RxBool isLoading = false.obs;

  @override
  void onInit() {
    load();
    super.onInit();
  }

  Future<void> load() async {
    isLoading.value = true;
    Get.put<HomeRepository>(
      HomeRepositoryImp(dio: dioInstance),
    );
    final api = Get.find<HomeRepository>();
    final result = await api.home();
    result.fold(
      (failure) {
        StatusCodeService.showSnackbar(failure.statusCode ?? 505);
      },
      (response) {
        home = response.obs;
        home!.value = home!.value;
      },
    );
    isLoading.value = false;
  }

  Stream<int> placeLive() {
    print("aaa ${ApiConstants.streamURL}${ApiConstants.userinfo}?token=${TokenService.to.withoutBearer}");
    final channel = WebSocketChannel.connect(
      Uri.parse("${ApiConstants.streamURL}${ApiConstants.userinfo}?token=${TokenService.to.withoutBearer}"),
    );

    return channel.stream.map((data) {
      final d = jsonDecode(data);
      return d["user_info"]["place"];
    });
  }

  Stream<int> ratingLive() {
    print("aaa ${ApiConstants.streamURL}${ApiConstants.userinfo}?token=${TokenService.to.withoutBearer}");
    final channel = WebSocketChannel.connect(
      Uri.parse("${ApiConstants.streamURL}${ApiConstants.userinfo}?token=${TokenService.to.withoutBearer}"),
    );

    return channel.stream.map((data) {
      final d = jsonDecode(data);
      return d["user_info"]["rating"];
    });
  }
}
