import 'package:flutter/material.dart';

///OKとキャンセルが選べるダイアログ
Widget selectDialog(
    {required BuildContext context,
      required void Function()? onTapOK,
      required void Function()? onTapCancel,
      required String message}) {
  return AlertDialog(
    content: SingleChildScrollView(
      child: ListBody(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(message,
                style: const TextStyle(color: Colors.black54, fontSize: 16.0)),
          ),
        ],
      ),
    ),
    actions: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ///CANCEL
          OutlinedButton(
            onPressed: onTapCancel,
            style: OutlinedButton.styleFrom(
              elevation: 5.0,
              backgroundColor: Colors.white,
              shape: const StadiumBorder(),
              side: const BorderSide(color: Colors.black54),
            ),
            child: const Text('CANCEL',
                style: TextStyle(color: Colors.black54, fontSize: 16.0)),
          ),

          ///OK
          OutlinedButton(
            onPressed: onTapOK,
            style: OutlinedButton.styleFrom(
              elevation: 5.0,
              backgroundColor: Colors.white,
              shape: const StadiumBorder(),
              side: const BorderSide(color: Colors.black54),
            ),
            child: const Text('OK',
                style: TextStyle(color: Colors.black54, fontSize: 16.0)),
          ),
        ],
      ),
    ],
  );
}

///Okボタンのみのダイアログ
Widget okDialog(
    {required BuildContext context,
      required void Function()? onTap,
      required String message}) {
  return AlertDialog(
    content: SingleChildScrollView(
      child: ListBody(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(message,
                style: const TextStyle(color: Colors.black54, fontSize: 16.0)),
          ),
        ],
      ),
    ),
    actions: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ///OK
          OutlinedButton(
            onPressed: onTap,
            style: OutlinedButton.styleFrom(
              elevation: 5.0,
              backgroundColor: Colors.white,
              shape: const StadiumBorder(),
              side: const BorderSide(color: Colors.black54),
            ),
            child: const Text('OK',
                style: TextStyle(color: Colors.black54, fontSize: 16.0)),
          ),
        ],
      ),
    ],
  );
}