import 'package:flutter/material.dart';

// Defines the color scheme and appearance for dark mode in the app
ThemeData darkMode = ThemeData(
  colorScheme: ColorScheme.dark(
    surface: Colors.grey.shade900,     // Background surface color for dark mode
    primary: Colors.grey.shade600,     // Primary color for components like app bars
    secondary: const Color.fromARGB(255, 45, 45, 45),  // Secondary color for highlights or accents
    tertiary: Colors.grey.shade800,    // Tertiary color for less prominent elements
    inversePrimary: Colors.grey.shade300, // Inverse primary, typically used for text/icons
  ),
);
