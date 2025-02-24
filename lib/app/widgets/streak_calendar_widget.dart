import 'package:flutter/material.dart';
import 'package:pdp_foundation/utils/extenstions/color_extension.dart';
import 'package:table_calendar/table_calendar.dart';

class StreakCalendarWidget extends StatefulWidget {
  final List<DateTime> activeDates;

  const StreakCalendarWidget({super.key, required this.activeDates});

  @override
  State<StreakCalendarWidget> createState() => _StreakCalendarWidgetState();
}

class _StreakCalendarWidgetState extends State<StreakCalendarWidget> {
  DateTime _focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      firstDay: DateTime.now().subtract(const Duration(days: 300)),
      lastDay: DateTime.now().add(const Duration(days: 300)),
      focusedDay: _focusedDay,
      onDaySelected: (selectedDay, focusedDay) {
        setState(() {
          print(selectedDay);
          _focusedDay = focusedDay;
        });
      },
      headerStyle: const HeaderStyle(
        titleCentered: true,
        formatButtonVisible: false,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
        leftChevronIcon: Icon(Icons.chevron_left, color: Colors.white),
        rightChevronIcon: Icon(Icons.chevron_right, color: Colors.white),
      ),
      daysOfWeekStyle: const DaysOfWeekStyle(
        weekdayStyle: TextStyle(color: Colors.grey),
        weekendStyle: TextStyle(color: Colors.grey),
      ),
      calendarStyle: const CalendarStyle(
        outsideDaysVisible: false,
        defaultTextStyle: TextStyle(color: Colors.white),
        weekendTextStyle: TextStyle(color: Colors.white),
        todayTextStyle: TextStyle(color: Colors.white),
        disabledTextStyle: TextStyle(color: Colors.grey),
      ),
      calendarBuilders: CalendarBuilders(
        defaultBuilder: (context, day, focusedDay) {
          return _buildDayCell(day, isSelected: false);
        },
        todayBuilder: (context, day, focusedDay) {
          return _buildDayCell(day, isSelected: true);
        },
        selectedBuilder: (context, day, focusedDay) {
          return _buildDayCell(day, isSelected: true);
        },
      ),
    );
  }

  /// Build a custom day cell widget.
  Widget _buildDayCell(DateTime day, {required bool isSelected}) {
    final bool isMarked =
        widget.activeDates.any((markedDay) => isSameDay(markedDay, day));

    final textStyle = TextStyle(
      color: isMarked ? context.backgroundColor : context.textPrimary,
      fontWeight: isMarked ? FontWeight.bold : FontWeight.normal,
      fontSize: 15,
    );

    final dayBackground = isMarked
        ? context.textPrimary
        : isSelected
            ? Colors.orange
            : Colors.transparent;

    return Container(
      margin: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: dayBackground,
      ),
      alignment: Alignment.center,
      child: Text(
        '${day.day}',
        style: textStyle,
      ),
    );
  }
}
