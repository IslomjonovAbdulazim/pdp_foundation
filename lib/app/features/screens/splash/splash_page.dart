import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../utils/services/token_service.dart';
import '../../../routes/app_routes.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration.zero, () {
      if (TokenService.to.hasToken) {
        Get.offAllNamed(AppRoutes.bnb);
      } else {
        Get.offAllNamed(AppRoutes.auth);
      }
    });
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator.adaptive(),
      ),
    );
  }
}
