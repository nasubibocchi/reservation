import 'package:flutter/material.dart';

class TodayBuilderWidget extends StatelessWidget {
  TodayBuilderWidget(
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
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      children: [
        Container(
          height: 56.0,
          width: 35.0,
          decoration: BoxDecoration(
            color: Colors.red.shade200,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
        Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  days.day.toString(),
                  style: const TextStyle(color: Colors.black54),
                ),
              ),
              dateList.contains(DateTime(days.year, days.month, days.day))
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
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    ),
              const SizedBox(height: 10.0),
            ],
          ),
        ),
      ],
    );
  }
}
