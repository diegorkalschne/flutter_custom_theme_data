import 'package:flutter/material.dart';
import 'package:flutter_custom_theme_data/extensions/theme_data_extension.dart';
import 'package:flutter_custom_theme_data/main.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Theme Data'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Texto sobre o background do Scaffold',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: theme.custom.onScaffoldBackgroundColor,
            ),
          ),
          const SizedBox(height: 30),
          ValueListenableBuilder(
            valueListenable: themeModeNotifier,
            builder: (_, themeMode, _) {
              return Row(
                children: [
                  Expanded(
                    child: Text(
                      'Tema claro',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 18,
                        color: theme.custom.onScaffoldBackgroundColor,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Switch(
                    value: themeMode == ThemeMode.dark,
                    onChanged: (value) {
                      themeModeNotifier.value = value ? ThemeMode.dark : ThemeMode.light;
                    },
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      'Tema escuro',
                      style: TextStyle(
                        fontSize: 18,
                        color: theme.custom.onScaffoldBackgroundColor,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
