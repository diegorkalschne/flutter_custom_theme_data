import 'package:flutter/material.dart';
import 'package:flutter_custom_theme_data/themes/dark_theme.dart';
import 'package:flutter_custom_theme_data/themes/light_theme.dart';
import 'package:flutter_custom_theme_data/views/home_page.dart';

ValueNotifier<ThemeMode> themeModeNotifier = ValueNotifier(ThemeMode.light);

void main() {
  runApp(const CustomThemeDataApp());
}

class CustomThemeDataApp extends StatefulWidget {
  const CustomThemeDataApp({super.key});

  @override
  State<CustomThemeDataApp> createState() => _CustomThemeDataAppState();
}

class _CustomThemeDataAppState extends State<CustomThemeDataApp> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: themeModeNotifier,
      builder: (_, themeMode, _) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: themeMode,
          theme: LightTheme.theme,
          darkTheme: DarkTheme.theme,
          home: const HomePage(),
        );
      },
    );
  }
}
