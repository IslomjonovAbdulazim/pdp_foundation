import 'package:flutter/material.dart';
import 'package:pdp_foundation/utils/extenstions/color_extension.dart';

class CustomHeatmap extends StatelessWidget {
  final DateTime startDate;
  final DateTime endDate;
  final Map<DateTime, int> data; // Each day maps to an integer "value"

  const CustomHeatmap({
    super.key,
    required this.startDate,
    required this.endDate,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    // 1) Generate all days in [startDate, endDate]
    final days = <DateTime>[];
    for (DateTime d = startDate;
        d.isBefore(endDate) || d.isAtSameMomentAs(endDate);
        d = d.add(const Duration(days: 1))) {
      days.add(d);
    }

    // 2) We’ll create a Table with 7 rows (one for each weekday).
    //    Each column is one day from 'days'.
    //    In Dart, DateTime.weekday: Monday=1, Sunday=7.
    //    We'll map Sunday to row=0, Monday to row=1, etc.
    //    So row index = (day.weekday % 7).

    final rowCount = 7; // S–M–T–W–T–F–S
    final colCount = days.length; // total days in the range

    // For the month labels, we can build a separate "header row"
    // that merges cells to show the month name. We'll do a quick approach:
    // We’ll track each day’s column index and if it’s the 1st of the month,
    // we display that month name above it. This is just one way to do it.

    // 2a) Build a header row for months
    final headerCells = <Widget>[];
    for (int col = 0; col < colCount; col++) {
      final day = days[col];
      final isFirstOfMonth = (day.day == 1);
      if (isFirstOfMonth) {
        // Example: show short month name
        headerCells.add(Text(
          _monthLabel(day.month),
          style: const TextStyle(fontWeight: FontWeight.bold),
        ));
      } else {
        headerCells.add(const SizedBox());
      }
    }

    // We wrap the entire table in a horizontal scroll so that
    // it can handle many days without overflowing.
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: [
          // Month names row (optional)
          Row(
            children: headerCells.map((widget) {
              return SizedBox(
                width: 22, // same width as each day cell below
                child: widget,
              );
            }).toList(),
          ),
          const SizedBox(height: 8),

          // Days-of-week labels (S M T W T F S) to the left, or we can put them above each row
          // Let's do them as a separate column on the left. That’s trickier with Table, so we’ll
          // do a side-by-side approach: a row that has the weekday labels on the left, plus the day cells on the right.
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Column of weekday labels
              Column(
                children: List.generate(rowCount, (rowIndex) {
                  // rowIndex 0 => Sunday, 1 => Monday, ...
                  final weekdayName = _weekdayLabel(rowIndex);
                  return Container(
                    width: 30,
                    height: 22,
                    alignment: Alignment.centerRight,
                    child: Text(
                      weekdayName,
                      style: const TextStyle(fontSize: 12),
                    ),
                  );
                }),
              ),
              const SizedBox(width: 8),

              Table(
                columnWidths: {
                  for (int i = 0; i < colCount; i++)
                    i: const FixedColumnWidth(22),
                },
                border: TableBorder(
                  verticalInside: BorderSide(color: context.dividerColor),
                  horizontalInside: BorderSide(color: context.dividerColor),
                ),
                children: [
                  for (int row = 0; row < rowCount; row++)
                    TableRow(
                      children: [
                        for (int col = 0; col < colCount; col++)
                          _buildDayCell(days[col], row),
                      ],
                    ),
                ],
              ),
            ],
          ),

          // Optional: color legend at the bottom
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildLegendSquare(Colors.grey[300]!, label: 'Goal not meet'),
              const SizedBox(width: 16),
              _buildLegendSquare(Colors.green[100]!, label: 'Less'),
              const SizedBox(width: 4),
              _buildLegendSquare(Colors.green[300]!),
              const SizedBox(width: 4),
              _buildLegendSquare(Colors.green[500]!),
              const SizedBox(width: 4),
              _buildLegendSquare(Colors.green[700]!, label: 'More'),
            ],
          ),
        ],
      ),
    );
  }

  // Returns the correct cell for the given [day] if its weekday matches [row].
  Widget _buildDayCell(DateTime day, int rowIndex) {
    // In Dart, Sunday=7, Monday=1, so let's map Sunday to row=0:
    final dayRow = day.weekday % 7; // Sunday=0, Monday=1, ...
    if (dayRow != rowIndex) {
      // If this day doesn't match the row, render an empty box or a blank space
      return const SizedBox(width: 22, height: 22);
    }

    // We have a match: so let's color it
    final value = data[day] ?? 0;
    final color = _colorFromValue(value);

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 2),
      width: 22,
      height: 22,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }

  // Convert an integer "value" to a color. You can customize logic or do a gradient.
  Color _colorFromValue(int value) {
    switch (value) {
      case 0:
        return Colors.grey[300]!;
      case 1:
        return Colors.green[100]!;
      case 2:
        return Colors.green[300]!;
      case 3:
        return Colors.green[500]!;
      case 4:
      default:
        return Colors.green[700]!;
    }
  }

  // Build a small square with a label underneath, for the legend
  Widget _buildLegendSquare(Color color, {String? label}) {
    return Column(
      children: [
        Container(width: 20, height: 20, color: color),
        if (label != null) Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }

  String _monthLabel(int month) {
    // Quick approach: Jan, Feb, Mar, ...
    const shortMonths = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec'
    ];
    return shortMonths[month - 1];
  }

  String _weekdayLabel(int rowIndex) {
    // rowIndex=0 => Sunday, 1 => Monday, ...
    const labels = ['S', 'M', 'T', 'W', 'T', 'F', 'S'];
    return labels[rowIndex];
  }
}
