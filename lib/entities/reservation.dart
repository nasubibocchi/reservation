import 'package:cloud_firestore/cloud_firestore.dart';

class Reservation {
  bool? canBeReserved;
  DateTime? date;
  String? reserveNotifier;
  DocumentReference? documentReference;

  Reservation(DocumentSnapshot doc) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    canBeReserved = data['canBeReserved'];
    date = data['date'].toDate();
    reserveNotifier = data['reserveNotifier'];
    documentReference = doc.reference;
  }
}