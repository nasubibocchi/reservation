import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:reservation/pages/widgets/appbar.dart';
import 'package:reservation/pages/widgets/dialog.dart';

class ReservePage extends StatelessWidget {
  ReservePage({Key? key, required this.date}) : super(key: key);

  DateTime date;
  String name = '';

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController(text: name);
    nameController.selection = TextSelection.fromPosition(
        TextPosition(offset: nameController.text.length));

    return Scaffold(
      appBar: GradientAppBar(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.red.shade500.withOpacity(0.5),
              Colors.yellowAccent.withOpacity(0.5),
            ]),
        appBar: AppBar(
          title: Text(DateFormat('yyyy/MM/dd')
              .format(DateTime(date.year, date.month, date.day))
              .toString()),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 50.0),
          TextField(
            onChanged: (value) {
              name = value;
            },
            onEditingComplete: () {
              FocusManager.instance.primaryFocus!.unfocus();
            },
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
              labelText: '名前',
              hintText: '例：名前を入力してください',
              hintStyle: TextStyle(color: Colors.grey),
              filled: true,
              fillColor: Colors.white,
            ),
            controller: nameController,
          ),
          const SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () async {
              await showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return selectDialog(
                        context: context,
                        onTapOK: () {
                          //TODO: add data 2 firestore
                        },
                        onTapCancel: () {
                          Navigator.pop(context);
                        },
                        message: '予約しますか？');
                  });
            },
            child: const Text('予約する',
                style: TextStyle(color: Colors.black54, fontSize: 16.0)),
            style: ElevatedButton.styleFrom(
              primary: Theme.of(context).primaryColor,
              elevation: 5.0,
              shape: const StadiumBorder(),
            ),
          ),
        ],
      ),
    );
  }
}
