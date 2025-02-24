import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pdp_foundation/utils/extenstions/color_extension.dart';
import 'package:pdp_foundation/utils/extenstions/text_style_extention.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: Padding(
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
                  onPressed: () {},
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
    );
  }
}
