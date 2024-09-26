import 'package:flutter/material.dart';
import '/database/habit_database.dart';
import '/theme/theme_provider.dart';
import 'package:provider/provider.dart';
import 'pages/home_page.dart';

void main() async {
  // Ensures that widget binding is initialized, necessary for async functions before runApp
  WidgetsFlutterBinding.ensureInitialized();
  
  // Initialize the habit database and save the first launch date of the app
  await HabitDatabase.initialize();
  await HabitDatabase().saveFirstLaunchDate();

  runApp(
    MultiProvider(
      providers: [
        // Provider for managing habit-related data (CRUD operations)
        ChangeNotifierProvider(
          create: (context) => HabitDatabase(),
        ),

        // Provider for managing theme (dark/light mode)
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Hides the debug banner in the app
      debugShowCheckedModeBanner: false,

      // Sets the home page to be displayed when the app starts
      home: const HomePage(),

      // Applies the theme (dark or light) depending on the ThemeProvider
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
