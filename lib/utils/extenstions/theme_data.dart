import 'package:flutter/material.dart';

@immutable
class CustomTheme extends ThemeExtension<CustomTheme> {
  final Color selectionColor;
  final Color blueColor;
  final Color yellowColor;

  const CustomTheme({
    required this.selectionColor,
    required this.blueColor,
    required this.yellowColor,
  });

  @override
  CustomTheme copyWith({Color? successColor, Color? errorColor}) {
    return CustomTheme(
      selectionColor: successColor ?? this.selectionColor,
      blueColor: blueColor,
      yellowColor: yellowColor,
    );
  }

  @override
  CustomTheme lerp(CustomTheme? other, double t) {
    if (other == null) return this;
    return CustomTheme(
      selectionColor: Color.lerp(selectionColor, other.selectionColor, t)!,
      blueColor: Color.lerp(blueColor, other.blueColor, t)!,
      yellowColor: Color.lerp(yellowColor, other.yellowColor, t)!,
    );
  }
}
