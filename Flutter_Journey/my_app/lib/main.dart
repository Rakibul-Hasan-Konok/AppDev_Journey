import 'package:flutter/material.dart';
import 'home_page.dart';

final ValueNotifier<ThemeMode> _themeNotifier = ValueNotifier(ThemeMode.light);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: _themeNotifier,
      builder: (context, ThemeMode currentMode, _) {
        return MaterialApp(
        debugShowCheckedModeBanner: false,
          title: 'Dart Documentation',
          theme: ThemeData(
            brightness: Brightness.light,
            primarySwatch: Colors.blue,
            scaffoldBackgroundColor: Colors.white,
            appBarTheme: const AppBarTheme(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
            ),
            textTheme: const TextTheme(
              bodyLarge: TextStyle(color: Colors.black, fontSize: 20),
              bodyMedium: TextStyle(color: Colors.grey),
            ),
          ),
          darkTheme: ThemeData(
            brightness: Brightness.dark,
            primarySwatch: Colors.deepPurple,
            scaffoldBackgroundColor: Colors.black,
            appBarTheme: const AppBarTheme(
              backgroundColor: Colors.deepPurple,
              foregroundColor: Colors.white,
            ),
            textTheme: const TextTheme(
              bodyLarge: TextStyle(color: Colors.white, fontSize: 20),
              bodyMedium: TextStyle(color: Colors.grey),
            ),
          ),
          themeMode: currentMode,
          home: HomePage(toggleTheme: _toggleTheme, isDarkMode: _themeNotifier.value == ThemeMode.dark),
        );
      },
    );
  }

  void _toggleTheme() {
    if (_themeNotifier.value == ThemeMode.light) {
      _themeNotifier.value = ThemeMode.dark;
    } else {
      _themeNotifier.value = ThemeMode.light;
    }
  }
}
