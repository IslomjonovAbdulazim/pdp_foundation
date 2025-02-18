import 'package:get/get.dart';
import 'package:pdp_foundation/app/features/home/home/imports.dart';

import '../features/screens/offline/imports.dart';
import 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.offline,
      page: () => OfflinePage(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => HomePage(),
    ),
  ];
}
