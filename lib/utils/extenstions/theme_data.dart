import 'package:flutter/material.dart';

@immutable
class CustomTheme extends ThemeExtension<CustomTheme> {
  final Color selectionColor;

  const CustomTheme({
    required this.selectionColor,
  });

  @override
  CustomTheme copyWith({Color? successColor, Color? errorColor}) {
    return CustomTheme(
      selectionColor: successColor ?? this.selectionColor,
    );
  }

  @override
  CustomTheme lerp(CustomTheme? other, double t) {
    if (other == null) return this;
    return CustomTheme(
      selectionColor: Color.lerp(selectionColor, other.selectionColor, t)!,
    );
  }
}
