// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Date Picker",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController dateInput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("DatePicker in Flutter"),
          backgroundColor: Colors.amber,
        ),
        body: Container(
            padding: EdgeInsets.all(15),
            height: MediaQuery.of(context).size.width / 3,
            child: Center(
                child: TextField(
              controller: dateInput,
              decoration: InputDecoration(
                  icon: Icon(Icons.calendar_today), labelText: "Enter Date"),
              readOnly: true,
              onTap: () async {
                DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1950),
                    lastDate: DateTime(2100));

                if (pickedDate != null) {
                  print(pickedDate);
                  String formattedDate =
                      DateFormat('yyyy-MM-dd').format(pickedDate);
                  print(formattedDate);
                  setState(() {
                    dateInput.text = formattedDate;
                  });
                } else {}
              },
            ))));
  }
}
