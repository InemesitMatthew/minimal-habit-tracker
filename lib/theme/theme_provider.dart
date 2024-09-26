import 'package:flutter/material.dart';
import 'dark_mode.dart';
import 'light_mode.dart';

class ThemeProvider extends ChangeNotifier {
  // Initially set the app theme to dark mode
  ThemeData _themeData = darkMode;

  // Getter to retrieve the current theme (dark or light)
  ThemeData get themeData => _themeData;

  // Boolean to check if the current theme is light mode
  bool get isLightMode => _themeData == lightMode;

  // Setter to update the app's theme and notify listeners
  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners(); // Notifies the UI to rebuild with the new theme
  }

  // Function to toggle between dark and light themes
  void toggleTheme() {
    if (_themeData == darkMode) {
      themeData = lightMode; // Switch to light mode
    } else {
      themeData = darkMode; // Switch to dark mode
    }
  }
}
