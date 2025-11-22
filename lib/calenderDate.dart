import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class Calender extends StatefulWidget {

  @override
  _CalenderState createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SfCalendar(
        view: CalendarView.month,
        // view: CalendarView.week,
        firstDayOfWeek: 6,
        initialDisplayDate: DateTime(2021,10,8,08,30),
        initialSelectedDate: DateTime(2021,10,8,08,30),
      ),
    );
  }
}
