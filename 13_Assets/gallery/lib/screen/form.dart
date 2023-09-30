// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:file_picker/file_picker.dart';
import 'package:open_file/open_file.dart';

List contacts = [
  {
    "name": "Anisa",
    "phone": "+6289-5256-1481",
    "date": "23-08-2023",
    "color": " Color(0xff8bc34a)",
    "file": "doc.jpeg"
  },
];

void _openFile(PlatformFile file) {
  OpenFile.open(file.path);
}

void _pickFile() async {
  final result = await FilePicker.platform.pickFiles();
  if (result == null) return;

  final file = result.files.first;
  _openFile(file);
}

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController dateInput = TextEditingController();
  Color _CurrentColor = Colors.pink;

  PlatformFile? get file => null;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
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
              height: 80,
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
              height: 5,
            ),
            Container(
                padding: EdgeInsets.all(10),
                height: MediaQuery.of(context).size.width / 3,
                child: Center(
                    child: TextField(
                  controller: dateInput,
                  decoration: InputDecoration(
                      icon: Icon(Icons.calendar_today),
                      labelText: "Enter Date"),
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
                ))),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Color'),
                const SizedBox(height: 10),
                Container(
                  height: 100,
                  width: double.infinity,
                  color: _CurrentColor,
                ),
                const SizedBox(height: 10),
                Center(
                  child: ElevatedButton(
                      child: const Text('Pick Color'),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text("Select a color!"),
                                content: BlockPicker(
                                  pickerColor: _CurrentColor,
                                  onColorChanged: (color) {
                                    setState(() {
                                      _CurrentColor = color;
                                    });
                                  },
                                ),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text('Save'))
                                ],
                              );
                            });
                      }),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Pick Files'),
                const SizedBox(height: 10),
                Center(
                  child: ElevatedButton(
                      onPressed: () {
                        _pickFile();
                      },
                      child: Text('Pick and Open File')),
                )
              ],
            )
          ],
        ),
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
                    "phone": "${phoneController.text}",
                    "date": "${dateInput.text}",
                    "color": "${_CurrentColor}",
                    "file": "_openFile(file!)"
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
                      Text('Tanggal gabung :${contacts[index]["date"]}'),
                      //Text(' warna : ${contacts[index]["color"]}')
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
