import 'package:flutter/material.dart';

class CustomTheme extends ThemeExtension<CustomTheme> {
  const CustomTheme({
    required this.onScaffoldBackgroundColor,
  });

  final Color onScaffoldBackgroundColor;

  @override
  CustomTheme copyWith({
    Color? onScaffoldBackgroundColor,
  }) {
    return CustomTheme(
      onScaffoldBackgroundColor: onScaffoldBackgroundColor ?? this.onScaffoldBackgroundColor,
    );
  }

  @override
  CustomTheme lerp(ThemeExtension<CustomTheme>? other, double t) {
    if (other is! CustomTheme) return this;
    return CustomTheme(
      onScaffoldBackgroundColor: Color.lerp(
        onScaffoldBackgroundColor,
        other.onScaffoldBackgroundColor,
        t,
      )!,
    );
  }
}
