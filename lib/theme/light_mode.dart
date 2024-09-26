import 'package:flutter/material.dart';

// Defines the color scheme and appearance for light mode in the app
ThemeData lightMode = ThemeData(
  colorScheme: ColorScheme.light(
    surface: Colors.grey.shade300,     // Background surface color
    primary: Colors.grey.shade500,     // Primary color for components like app bars
    secondary: Colors.grey.shade200,   // Secondary color for highlights or accents
    tertiary: Colors.white,            // Tertiary color, used for less prominent elements
    inversePrimary: Colors.grey.shade900, // Inverse primary, typically used for text/icons
  ),
);
