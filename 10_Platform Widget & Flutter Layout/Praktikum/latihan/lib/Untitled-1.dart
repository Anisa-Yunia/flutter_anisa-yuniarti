// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key); // Hapus parameter super.key

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController nameController = TextEditingController();

  List<Map<String, String>> contacts = [
    {"name": "Anisa", "phone": "+6289-5256-1481"},
    {"name": "Putri", "phone": "+6282-2198-8711"},
    {"name": "Delia", "phone": "+6289-9126-1211"},
    {"name": "Kata", "phone": "+6282-1156-1284"}
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(top: 30, left: 20, right: 20),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.phone_iphone_sharp,
                    size: 20.0,
                  ),
                  SizedBox(height: 15.0),
                  Text('Create New Contacts', style: TextStyle(fontSize: 18.0)),
                  SizedBox(
                    height: 10.0,
                  ),
                  SizedBox(
                    height: 50,
                    width: 280,
                    child: Text(
                      'A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made',
                      style: TextStyle(fontSize: 12.0),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Divider(),
                  TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(gapPadding: 10),
                        labelText: 'Name',
                        hintText: 'insert Your name',
                      ),
                      onChanged: (inputControllers) {
                        print('$nameController');
                      }),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(gapPadding: 10),
                      labelText: 'Number',
                      hintText: '+62',
                    ),
                    onChanged: (inputControllers) {
                      print('$nameController');
                    },
                  ),
                  ElevatedButton(
                      child: Text('submit'),
                      onPressed: () {
                        setState(() {
                          contacts.add({
                            "title": "${nameController.text}",
                            "phone": "${nameController.text}"
                          });
                        });
                      })
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
