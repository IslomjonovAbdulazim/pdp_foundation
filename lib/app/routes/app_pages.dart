import 'package:get/get.dart';

import '../features/screens/offline/imports.dart';
import 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.offline,
      page: () => OfflinePage(),
    ),
  ];
}
