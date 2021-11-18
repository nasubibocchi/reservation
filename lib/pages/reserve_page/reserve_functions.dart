import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:reservation/pages/widgets/dialog.dart';

class ReserveFunctions {
  final firestore = FirebaseFirestore.instance;

  Future<void> makeReservation(
      {required BuildContext context,
      required DateTime date,
      required String name}) async {
    final docRef = firestore
        .collection('reservation')
        .doc(date.year.toString() + '-' + date.month.toString())
        .collection('date')
        .doc(date.day.toString());

    final docs = await docRef.get();

    if (docs.data() == null) {
      try {
        await docRef.set(<String, dynamic>{
          'canBeReserved': false,
          'date': date,
          'reserveNotifier': '×',
          'name': name,
        });
      } catch (e) {
        await showDialog(
            context: context,
            builder: (BuildContext context) {
              return okDialog(
                  context: context,
                  onTap: () {
                    Navigator.pop(context);
                  },
                  message: '予約できませんでした。時間を置いてみてください。');
            });
      }
      var count = 0;
      Navigator.popUntil(context, (route) => count++ >= 2);
    } else {
      try {
        await docRef.update(<String, dynamic>{
          'canBeReserved': false,
          'date': date,
          'reserveNotifier': '×',
          'name': name,
        });
      } catch (e) {
        await showDialog(
            context: context,
            builder: (BuildContext context) {
              return okDialog(
                  context: context,
                  onTap: () {
                    Navigator.pop(context);
                  },
                  message: '予約できませんでした。時間を置いてみてください。');
            });
      }
      var count = 0;
      Navigator.popUntil(context, (route) => count++ >= 2);
    }
  }
}
