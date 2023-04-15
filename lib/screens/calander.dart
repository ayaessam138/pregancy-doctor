import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class calender extends StatefulWidget {
  static String calenderid = 'calender';

  @override
  State<calender> createState() => _calenderState();
}

class _calenderState extends State<calender> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  DateTime kfirstDay = DateTime.utc(2010, 10, 16);
  DateTime klastday = DateTime.utc(2080, 3, 14);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TableCalendar(
          firstDay: kfirstDay,
          lastDay: klastday,
          focusedDay: _focusedDay,
          calendarFormat: _calendarFormat,
          selectedDayPredicate: (day) {
            return isSameDay(_selectedDay, day);
            //  issameday Checks if two DateTime objects are the same day. Returns false if either of them is null.
          },
          onDaySelected: (selectedDay, focusedDay) {
            if (!isSameDay(_selectedDay, selectedDay)) {
              setState(() {
                _selectedDay = selectedDay;
                _focusedDay = focusedDay;
              });
            }
          }),
    );
  }
}
