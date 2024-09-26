# Habit Tracker App

### Table of Contents
1. [Project Overview](#project-overview)
2. [Features](#features)
3. [Project Structure](#project-structure)
4. [Installation](#installation)
5. [Usage](#usage)
6. [Dependencies](#dependencies)
7. [Future Enhancements](#future-enhancements)
8. [Contributing](#contributing)
9. [License](#license)

## Project Overview

**Habit Tracker** is a Flutter-based mobile application designed to help users keep track of their habits and routines. The app allows users to set habits, view them in an interactive format (e.g., heatmaps), and track their progress over time. It supports dark and light themes, providing users a customizable experience, along with persistent habit data storage.

## Features

- **Add and Remove Habits**: Create custom habits, remove them when no longer needed.
- **Track Progress**: Monitor daily, weekly, and monthly progress via a visual heatmap.
- **Themes**: Toggle between dark mode and light mode to suit the user's preference.
- **Persistent Storage**: Save habits and progress data locally using a database (Isar).
- **Responsive UI**: Works across a variety of screen sizes.

## Project Structure

The following is the structure of the project and a brief description of each directory:

```
lib/
│
├── components/          # Reusable UI components (drawer, tiles, heatmaps)
│   ├── my_drawer.dart        # Side drawer for navigation
│   ├── my_habit_tile.dart    # Displays each habit as a tile
│   └── my_heat_map.dart      # Heatmap to visualize progress
│
├── database/            # Database and persistence logic
│   └── habit_database.dart   # Handles saving and retrieving habit data
│
├── main.dart            # Entry point of the application
│
├── models/              # Data models for habits and settings
│   ├── app_settings.dart     # Manages app settings (e.g., theme preferences)
│   ├── app_settings.g.dart   # Generated code for app settings
│   ├── habit.dart            # Habit data structure
│   └── habit.g.dart          # Generated code for habit model
│
├── pages/               # UI Pages of the application
│   └── home_page.dart        # Main page to track and manage habits
│
├── theme/               # Theme management (dark mode, light mode)
│   ├── dark_mode.dart        # Theme data for dark mode
│   ├── light_mode.dart       # Theme data for light mode
│   └── theme_provider.dart   # Provider for switching themes
│
└── util/                # Utility classes and functions
    └── habit_util.dart       # Helper functions for habit logic
```

## Installation

To install and run this project locally, follow these steps:

### Prerequisites
- Install **Flutter SDK**: You can download the Flutter SDK from [Flutter's official website](https://flutter.dev/docs/get-started/install).
- Set up your preferred **IDE** (VS Code or Android Studio) with Flutter and Dart plugins.
- For mobile development, an **Android Emulator** or a physical Android/iOS device is needed for testing.

### Steps

1. **Clone the repository**:
   ```bash
   git clone https://github.com/InemesitMatthew/minimal-habit-tracker.git
   cd habit-tracker
   ```

2. **Install dependencies**:
   ```bash
   flutter pub get
   ```

3. **Run the app**:
   - To run the app on an emulator or physical device:
     ```bash
     flutter run
     ```

## Usage

### Adding a Habit
1. Tap the “Add Habit” button.
2. Enter the habit's name, choose any additional details (frequency, start date), and save it.

### Viewing Progress
- On the **Home Page**, you can see a list of all your habits along with a heatmap visualization to track daily progress.
- Each habit is displayed as a **tile**, and tapping on it allows users to view more details and edit or delete the habit.

### Dark Mode/Light Mode
- Go to settings (available through the side drawer), and switch between **dark** and **light** modes using the toggle.

### Data Persistence
- All your habit data is saved locally using **Isar Database**. Even if you close the app, your data will be restored when you open it again.

## Dependencies

This project depends on the following major packages:

- `flutter`: The core Flutter framework.
- `isar`: A fast, easy-to-use database for local storage.
- `provider`: Manages the app’s state (like theme switching).
- `flutter_heatmap_calendar`: Used to generate the heatmap for habit tracking.

To see the complete list of dependencies, refer to the `pubspec.yaml` file.

## Future Enhancements

Some planned features for future versions include:

- **Reminders and Notifications**: Notify users when a habit is due.
- **Habit Streaks**: Track continuous progress for motivation.
- **Custom Habit Categories**: Group habits into categories like Work, Health, etc.
- **Multiple Language Support**: Localize the app for non-English users.

## Contributing

We welcome contributions from the community! To contribute:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Make your changes and commit (`git commit -m "Add some feature"`).
4. Push to the branch (`git push origin feature-branch`).
5. Open a **Pull Request**.

Feel free to open an issue if you find a bug or want to request a feature!

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

