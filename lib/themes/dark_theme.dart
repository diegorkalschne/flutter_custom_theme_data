import 'package:flutter/material.dart';
import 'package:flutter_custom_theme_data/themes/custom_theme.dart';

class DarkTheme {
  static ThemeData get theme => ThemeData(
    primaryColor: Colors.grey[800],
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.grey[800],
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
      elevation: 10,
    ),
    extensions: [
      CustomTheme(onScaffoldBackgroundColor: Colors.white),
    ],
  );
}
