import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reservation/entities/reservation.dart';
import 'package:reservation/pages/calendar_page/selected_day/select_day_provider.dart';
import 'package:reservation/pages/calendar_page/widgets/default_builder_widget.dart';
import 'package:reservation/pages/calendar_page/widgets/selected_builder_widget.dart';
import 'package:reservation/pages/reserve_page/reserve_page.dart';
import 'package:table_calendar/table_calendar.dart';

import 'focused_day/focused_day_provider.dart';

class CalendarPage extends HookConsumerWidget {
  final today = DateTime.now();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final firestore = FirebaseFirestore.instance;
    final _selectedDay = ref.watch(selectDayProvider).selectedDay;

    useEffect(() {
      ref.read(focusedDayProvider.notifier).changeFocusedDay(today);
    }, const []);
    final _focusedDay = ref.watch(focusedDayProvider).focusedDay;

    String selectedYearMonth =
        _focusedDay.year.toString() + '-' + _focusedDay.month.toString();

    return Scaffold(
      body: StreamBuilder(
          stream: firestore
              .collection('reservation')
              .doc(selectedYearMonth)
              .collection('date')
              .snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            } else if (!snapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(
                    color: Theme.of(context).primaryColor),
              );
            } else if (snapshot.data!.docs.isEmpty) {
              return const Center(
                child: SizedBox(),
              );
            } else {
              final reservation =
                  snapshot.data!.docs.map((e) => Reservation(e));
              final dateList = reservation
                  .map(
                      (e) => DateTime(e.date!.year, e.date!.month, e.date!.day))
                  .toList();
              final reserveNotifierList =
                  reservation.map((e) => e.reserveNotifier).toList();
              final canBeReservedList =
                  reservation.map((e) => e.canBeReserved).toList();

              return Center(
                child: Column(
                  children: [
                    const SizedBox(height: 80.0),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TableCalendar(
                        daysOfWeekHeight: 40.0,
                        rowHeight: 72.0,
                        calendarBuilders: CalendarBuilders(
                          defaultBuilder:
                              (BuildContext context, days, focusedDay) {
                            return DefaultBuilderWidget(
                              days: days,
                              dateList: dateList,
                              reserveNotifierList: reserveNotifierList,
                            );
                          },
                          selectedBuilder:
                              (BuildContext context, days, focusedDay) {
                            return SelectedBuilderWidget(
                                days: days,
                                dateList: dateList,
                                reserveNotifierList: reserveNotifierList);
                          },
                        ),
                        focusedDay: _focusedDay,
                        firstDay: DateTime(2021, 1, 1),
                        lastDay: DateTime(2080, 3, 31),
                        selectedDayPredicate: (day) {
                          return isSameDay(_selectedDay, day);
                        },
                        onDaySelected: (selectedDay, focusDay) async {
                          ref
                              .read(selectDayProvider.notifier)
                              .changeSelectDay(selectedDay);

                          ref
                              .read(focusedDayProvider.notifier)
                              .changeFocusedDay(focusDay);

                          if (!dateList.contains(DateTime(selectedDay.year,
                                  selectedDay.month, selectedDay.day)) ||
                              canBeReservedList[dateList.indexOf(DateTime(
                                      selectedDay.year,
                                      selectedDay.month,
                                      selectedDay.day))] ==
                                  true) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ReservePage(date: selectedDay)));
                          }
                        },
                        onPageChanged: (focusedDay) {
                          ref
                              .read(focusedDayProvider.notifier)
                              .changeFocusedDay(focusedDay);
                        },
                        headerStyle: HeaderStyle(
                          headerMargin: const EdgeInsets.symmetric(
                              vertical: 16.0, horizontal: 0.0),
                          formatButtonVisible: false,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            gradient: LinearGradient(
                              colors: [
                                Colors.red.shade500.withOpacity(0.5),
                                Colors.yellowAccent.withOpacity(0.5),
                              ],
                            ),
                          ),
                        ),
                        calendarStyle: CalendarStyle(
                          todayDecoration: BoxDecoration(
                              color: Colors.red.shade200,
                              shape: BoxShape.circle),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }
          }),
    );
  }
}
