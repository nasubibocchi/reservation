import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reservation/pages/calendar_page/select_day_provider.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarPage extends HookConsumerWidget {

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    useEffect(() {
      ref.read(selectDayProvider.notifier).initDay(DateTime.now());
    }, const []);

    final _selectedDay = ref.watch(selectDayProvider).selectedDay;
    final _focusedDay = ref.watch(selectDayProvider).focusDay;

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 80.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TableCalendar(
                focusedDay: _focusedDay,
                firstDay: DateTime(2020, 1, 1),
                lastDay: DateTime(2080, 3, 31),
                selectedDayPredicate: (day) {
                  return isSameDay (_selectedDay, day);
                },
                onDaySelected: (selectedDay, focusDay) {
                  ref
                      .read(selectDayProvider.notifier)
                      .selectDay(selectedDay, focusDay);
                },
                calendarBuilders: CalendarBuilders(defaultBuilder:
                    (BuildContext context, _selectedDay, _focusDay) {
                  return Column(
                    children: [
                      _selectedDay == DateTime.now()
                          ? Text(DateTime.now().day.toString())
                          : Text(_selectedDay.day.toString()),
                      //TODO: change 2 firestore data
                      const Text('○'),
                    ],
                  );
                }),
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
                calendarStyle: CalendarStyle(
                  todayDecoration: BoxDecoration(color: Colors.red.shade300),
                  selectedDecoration: BoxDecoration(color: Colors.red.shade500),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
