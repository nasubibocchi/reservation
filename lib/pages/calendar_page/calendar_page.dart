import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarPage extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 80.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TableCalendar(
                focusedDay: DateTime.now(),
                firstDay: DateTime(2020, 1, 1),
                lastDay: DateTime(2080, 3, 31),
                headerStyle: HeaderStyle(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Theme.of(context).primaryColor,
                        Colors.yellowAccent.withOpacity(0.5),
                      ],
                    ),
                  ),
                ),
                onDaySelected: (selectedDay, focusDay) {
                  //TODO: setState
                },
                calendarStyle: CalendarStyle(
                  todayDecoration: BoxDecoration(color: Colors.red.shade300),
                  selectedDecoration: BoxDecoration(color: Colors.red.shade500),
                ),
                calendarBuilders: CalendarBuilders(defaultBuilder:
                    (BuildContext context, selectedDay, focusDay) {
                  return Column(
                    children: [
                      selectedDay == DateTime.now()
                          ? Text(DateTime.now().day.toString())
                          : Text(selectedDay.day.toString()),
                      const Text('○'),
                    ],
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
