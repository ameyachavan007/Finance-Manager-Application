import 'package:flutter/material.dart';
import 'package:save/data/constants.dart';
import 'package:table_calendar/table_calendar.dart';

class TransactionCalendar extends StatelessWidget {
  const TransactionCalendar({
    Key key,
    @required CalendarController controller,
  })  : _controller = controller,
        super(key: key);

  final CalendarController _controller;

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      daysOfWeekStyle: DaysOfWeekStyle(
        weekendStyle: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: kDarkSecondaryColor,
        ),
        weekdayStyle: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: kDarkSecondaryColor,
        ),
      ),
      initialCalendarFormat: CalendarFormat.week,
      calendarStyle: CalendarStyle(
        weekdayStyle: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        weekendStyle: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        outsideDaysVisible: false,
        selectedColor: kPrimaryColor,
        selectedStyle: TextStyle(
            fontFamily: 'Montserrat', fontSize: 16, color: Colors.white),
      ),
      headerStyle: HeaderStyle(
        titleTextStyle: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: kDarkSecondaryColor,
        ),
        formatButtonDecoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        formatButtonTextStyle: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.white),
        formatButtonShowsNext: false,
      ),
      startingDayOfWeek: StartingDayOfWeek.monday,
      calendarController: _controller,
    );
  }
}
