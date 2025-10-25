import 'package:flutter/material.dart';
import 'package:flutter_custom_theme_data/themes/custom_theme.dart';

extension ThemeDataExtension on ThemeData {
  CustomTheme get custom => extension<CustomTheme>()!;
}
