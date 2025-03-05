import 'package:flutter/material.dart';

@immutable
class CustomTheme extends ThemeExtension<CustomTheme> {
  final Color selectionColor;
  final Color blueColor;
  final Color yellowColor;
  final Color greenColor;

  const CustomTheme({
    required this.selectionColor,
    required this.blueColor,
    required this.yellowColor,
    required this.greenColor,
  });

  @override
  CustomTheme copyWith({Color? successColor, Color? errorColor}) {
    return CustomTheme(
      selectionColor: successColor ?? selectionColor,
      blueColor: blueColor,
      yellowColor: yellowColor,
      greenColor: greenColor,
    );
  }

  @override
  CustomTheme lerp(CustomTheme? other, double t) {
    if (other == null) return this;
    return CustomTheme(
      selectionColor: Color.lerp(selectionColor, other.selectionColor, t)!,
      blueColor: Color.lerp(blueColor, other.blueColor, t)!,
      yellowColor: Color.lerp(yellowColor, other.yellowColor, t)!,
      greenColor: Color.lerp(greenColor, other.greenColor, t)!,
    );
  }
}
