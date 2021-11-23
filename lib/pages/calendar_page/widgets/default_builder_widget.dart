import 'package:flutter/material.dart';

class DefaultBuilderWidget extends StatelessWidget {
  DefaultBuilderWidget(
      {Key? key,
      required this.days,
      required this.dateList,
      required this.reserveNotifierList})
      : super(key: key);

  DateTime days;
  List dateList;
  List reserveNotifierList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(days.day.toString()),
        ),
        dateList.contains(
          DateTime(days.year, days.month, days.day),
        )
            ? Text(
                reserveNotifierList[dateList.indexOf(
                  DateTime(days.year, days.month, days.day),
                )]
                    .toString(),
                style: const TextStyle(
                  color: Colors.black54,
                ),
              )
            : const Text(
                '○',
                style: TextStyle(color: Colors.black54),
              ),
        const SizedBox(height: 10.0),
      ],
    );
  }
}
