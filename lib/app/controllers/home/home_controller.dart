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
  late WebSocketChannel _channel;
  final RxInt place = 0.obs;
  final RxInt rating = 0.obs;

  @override
  void onInit() {
    load();
    _initWebSocket();
    super.onInit();
  }

  Future<void> load() async {
    isLoading.value = true;
    print("Load----------");
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

  void _initWebSocket() {
    final url = "${ApiConstants.streamURL}${ApiConstants.userinfo}?token=${TokenService.to.withoutBearer}";
    print("WebSocket URL: $url");
    _channel = WebSocketChannel.connect(Uri.parse(url));

    _channel.stream.listen((data) {
      final decoded = jsonDecode(data);
      final userInfo = decoded["user_info"];
      if (userInfo != null) {
        place.value = userInfo["place"];
        rating.value = userInfo["rating"];
      }
    });
  }
}
