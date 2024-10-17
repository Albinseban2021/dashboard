import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarWidget extends StatefulWidget {
  const CalendarWidget({super.key});

  @override
  _CalendarWidgetState createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  // Function to handle the dropdown selection for month and year
  void _onMonthYearChanged(DateTime newDate) {
    setState(() {
      _focusedDay = newDate;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 330,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2), 
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 10,
            offset:const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: DropdownButton<int>(
                  value: _focusedDay.month,
                  onChanged: (int? newMonth) {
                    if (newMonth != null) {
                      DateTime newDate = DateTime(_focusedDay.year, newMonth, 1);
                      _onMonthYearChanged(newDate);
                    }
                  },
                  items: List.generate(12, (index) {
                    return DropdownMenuItem(
                      value: index + 1,
                      child:  Text(_getMonthName(index + 1), style: const TextStyle(fontSize: 14)),
                    );
                  }),
                  isExpanded: true,
                ),
              ),
              const SizedBox(width: 5),
              Expanded(
                child: DropdownButton<int>(
                  value: _focusedDay.year,
                  onChanged: (int? newYear) {
                    if (newYear != null) {
                      DateTime newDate = DateTime(newYear, _focusedDay.month, 1);
                      _onMonthYearChanged(newDate);
                    }
                  },
                  items: List.generate(20, (index) {
                    int year = DateTime.now().year - 10 + index;
                    return DropdownMenuItem(
                      value: year,
                      child: Text(year.toString(), style: const TextStyle(fontSize: 14)),
                    );
                  }),
                  isExpanded: true,
                ),
              ),
            ],
          ),
          // Calendar widget
          Expanded(
            child: TableCalendar(
              firstDay: DateTime.utc(2020, 1, 1),
              lastDay: DateTime.utc(2030, 12, 31),
              focusedDay: _focusedDay,
              selectedDayPredicate: (day) {
                return isSameDay(_selectedDay, day);
              },
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDay = selectedDay;
                  _focusedDay = focusedDay;
                });
              },
              calendarFormat: CalendarFormat.month,
              headerVisible: false, 
              daysOfWeekStyle: DaysOfWeekStyle(
                weekdayStyle: TextStyle(color: Colors.grey[700], fontSize: 12), 
                weekendStyle: TextStyle(color: Colors.grey[700], fontSize: 12),
              ),
              calendarStyle: CalendarStyle(
                defaultTextStyle: const TextStyle(color: Colors.black87, fontSize: 12), 
                weekendTextStyle: const TextStyle(color: Colors.black87, fontSize: 12),
                cellMargin: const EdgeInsets.all(1), 
                selectedDecoration: const BoxDecoration(
                  color: Color(0xFF886CE6),
                  shape: BoxShape.circle,
                ),
                todayDecoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(color: const Color(0xFF886CE6)),
                  shape: BoxShape.circle,
                ),
                outsideDaysVisible: false,
              ),
              startingDayOfWeek: StartingDayOfWeek.monday,
            ),
          ),
        ],
      ),
    );
  }

  String _getMonthName(int month) {
    List<String> months = [
      'Jan', 'Feb', 'Mar', 'April', 'May', 'June', 'July', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
    ];
    return months[month - 1];
  }
}
