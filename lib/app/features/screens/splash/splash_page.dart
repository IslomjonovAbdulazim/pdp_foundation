import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Future.delayed(Duration.zero, () {
    //   if (TokenService.to.hasToken) {
    //     Get.offAllNamed(AppRoutes.main);
    //   } else {
    //     Get.offAllNamed(AppRoutes.onboarding);
    //   }
    // });
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator.adaptive(),
      ),
    );
  }
}
