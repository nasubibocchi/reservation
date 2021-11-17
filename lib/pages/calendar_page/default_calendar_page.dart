import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DefaultCalendarPage extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 80.0),
            CalendarDatePicker(
              initialDate: DateTime.now(),
              firstDate: DateTime(2020, 1, 1),
              lastDate: DateTime(2080, 3, 31),
              onDateChanged: (selectDate) {},

            ),
          ],
        ),
      ),
    );
  }
}
