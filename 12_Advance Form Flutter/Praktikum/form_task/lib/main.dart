// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

List contacts = [
  {"name": "Anisa", "phone": "+6289-5256-1481"},
  {"name": "Putri", "phone": "+6282-2198-8711"},
  {"name": "Delia", "phone": "+6289-9126-1211"},
  {"name": "Kata", "phone": "+6282-1156-1284"},
];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Contacts'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Contact(),
        ),
      ),
    );
  }
}

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  String textFieldData = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Icon(
                Icons.phone_iphone_sharp,
                size: 30.0,
              ),
            ),
            SizedBox(height: 15.0),
            Text('Create New Contacts', style: TextStyle(fontSize: 20.0)),
            SizedBox(
              height: 10.0,
            ),
            SizedBox(
              height: 50,
              width: 280,
              child: Text(
                'A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made',
                style: TextStyle(fontSize: 14.0),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Divider(),
            TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(gapPadding: 10),
                  labelText: 'Name',
                  hintText: 'insert Your name',
                ),
                onChanged: (nameControllers) {
                  print('$nameController');
                }),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: phoneController,
              decoration: InputDecoration(
                border: OutlineInputBorder(gapPadding: 10),
                labelText: 'Number',
                hintText: '+62',
              ),
              onChanged: (phoneController) {
                print('$phoneController');
              },
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                padding: EdgeInsets.all(15),
                height: MediaQuery.of(context).size.width / 3,
                child: Center(
                    child: TextField(
                  //editing controller of this TextField
                  decoration: InputDecoration(
                      icon: Icon(Icons.calendar_today), //icon of text field
                      labelText: "Enter Date" //label text of field
                      ),
                  readOnly: true,
                  //set it true, so that user will not able to edit text
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1950),
                        //DateTime.now() - not to allow to choose before today.
                        lastDate: DateTime(2100));

                    if (pickedDate != null) {
                      print(
                          pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                      String formattedDate =
                          DateFormat('yyyy-MM-dd').format(pickedDate);
                      print(
                          formattedDate); //formatted date output using intl package =>  2021-03-16
                      setState(() {
                        textFieldData =
                            formattedDate; //set output date to TextField value.
                      });
                    } else {}
                  },
                ))),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  child: Text('Sumbit'),
                  onPressed: () {
                    setState(() {
                      contacts.add({
                        "name": "${nameController.text}",
                        "phone": "${phoneController.text}"
                      });
                    });
                    print('contacts : $contacts');
                  },
                ),
                SizedBox(height: 5),
              ],
            ),
            Divider(),
            SizedBox(
              height: 200,
              child: ListView.builder(
                  itemCount: contacts.length, //3
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: const Icon(Icons.account_circle_outlined),
                      title: Text('${contacts[index]["name"]}'),
                      subtitle: Column(
                        children: [
                          Text('${contacts[index]["phone"]} '),
                          Text('Tanggal gabung :${textFieldData} ')
                        ],
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            children: [
                              IconButton(
                                icon: const Icon(Icons.delete),
                                onPressed: () {
                                  setState(() {
                                    contacts.removeAt(index);
                                  });
                                },
                              ),
                              IconButton(
                                  icon: const Icon(Icons.edit),
                                  onPressed: () => AlertEdit(context, index)),
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ],
    );
  }

  Future<String?> AlertEdit(BuildContext context, int index) {
    final contact = contacts[index]['name'];
    final nomor = contacts[index]['phone'];
    TextEditingController nameControllerEdit =
        TextEditingController(text: contact);
    TextEditingController numControllerEdit =
        TextEditingController(text: nomor);

    return showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
              title: const Text('AlertDialog Title'),
              content: Column(children: [
                Text('name'),
                TextField(
                  controller: nameControllerEdit,
                ),
                Text('number'),
                TextField(
                  controller: numControllerEdit,
                ),
              ]),
              actions: [
                TextButton(
                    onPressed: () {
                      //logika untuk menindih value berdsarkan index
                      print(contacts);
                      setState(() {
                        contacts[index]["name"] = nameControllerEdit.text;
                        contacts[index]["phone"] = numControllerEdit.text;
                      });
                      Navigator.pop(context);
                      print(contacts);

                      print('submit edit');
                    },
                    child: Text('Submit Edit')),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context, 'Cancel');
                    },
                    child: Text('Cancel'))
              ],
            ));
  }
}
