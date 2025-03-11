import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/extenstions/color_extension.dart';
import '../../../../utils/extenstions/text_style_extention.dart';
import '../../../controllers/screens/auth_controller.dart';

class AuthPage extends GetView<AuthController> {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Obx(
          () => Center(
            child: controller.isLoading.value
                ? const CircularProgressIndicator.adaptive()
                : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(flex: 3),
                        Text(
                          "PDP Mobile",
                          style: context.display,
                        ),
                        const SizedBox(height: 20),
                        TextField(
                          controller: controller.phoneNumber.value,
                          focusNode: controller.phoneFocus.value,
                          decoration: InputDecoration(
                            filled: true,
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 15,
                            ),
                            fillColor: context.dividerColor,
                            hintText: "Username",
                            hintStyle: context.body,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          controller: controller.password.value,
                          focusNode: controller.passwordFocus.value,
                          decoration: InputDecoration(
                            filled: true,
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 15,
                            ),
                            fillColor: context.dividerColor,
                            hintText: "Password",
                            hintStyle: context.body,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        const SizedBox(height: 12),
                        CupertinoButton(
                          color: context.textPrimary,
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          borderRadius: BorderRadius.circular(15),
                          onPressed: () {
                            controller.login();
                          },
                          child: Center(
                            child: Text(
                              "Authenticate",
                              style: context.button,
                            ),
                          ),
                        ),
                        const Spacer(flex: 5),
                      ],
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
