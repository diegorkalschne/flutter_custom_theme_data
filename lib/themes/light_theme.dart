import 'package:flutter/material.dart';
import 'package:flutter_custom_theme_data/themes/custom_theme.dart';

class LightTheme {
  static ThemeData get theme => ThemeData(
    primaryColor: Colors.blue[600],
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.blue[600],
      foregroundColor: Colors.white,
      elevation: 10,
    ),
    extensions: [
      CustomTheme(onScaffoldBackgroundColor: Colors.black),
    ],
  );
}
