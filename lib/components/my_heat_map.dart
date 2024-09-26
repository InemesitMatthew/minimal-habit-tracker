import 'package:flutter/material.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';

class MyHeatMap extends StatelessWidget {
  // Datasets to populate the heatmap
  final Map<DateTime, int>? datasets;
  // Start date for the heatmap display
  final DateTime? startDate;

  const MyHeatMap({
    super.key,
    required this.startDate,
    required this.datasets,
  });

  @override
  Widget build(BuildContext context) {
    return HeatMap(
      startDate: startDate,  // Display heatmap from startDate
      endDate: DateTime.now(),  // Display heatmap up to today's date
      datasets: datasets,  // Populate the heatmap with data
      colorMode: ColorMode.color,  // Color-based mode
      defaultColor: Theme.of(context).colorScheme.secondary,  // Default background color
      textColor: Colors.white,  // Color of the text on heatmap
      showColorTip: false,  // Hide color intensity tip
      showText: true,  // Show date text on the heatmap cells
      scrollable: true,  // Allow horizontal scrolling for large date ranges
      size: 30,  // Size of each cell in the heatmap
      colorsets: {
        1: Colors.green.shade200,
        2: Colors.green.shade300,
        3: Colors.green.shade400,
        4: Colors.green.shade500,
        5: Colors.green.shade600,
      },  // Different colors representing intensity of habit completions
    );
  }
}
