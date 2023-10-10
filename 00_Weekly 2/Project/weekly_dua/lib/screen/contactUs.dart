// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:weekly_dua/widget/drawer.dart';

class ContactUsPage extends StatefulWidget {
  const ContactUsPage({super.key});

  @override
  State<ContactUsPage> createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController content = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          title: const Text("Contact Us"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SizedBox(
                height: 60,
                width: 280,
                child: Text(
                  "Need to get in touch with us? Either fill out the form with your inquiry or find the department email you'd like to contact below",
                  style: TextStyle(fontSize: 14.0),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 225,
                        child: Column(
                          children: [
                            Text(
                              'First Name*',
                            ),
                            TextField(
                                controller: firstName,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(gapPadding: 10),
                                  hintText: 'insert Your name',
                                ),
                                onChanged: (firstname) {
                                  print('$firstname');
                                }),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Column(
                        children: [
                          Text(
                            'Last Name*',
                          ),
                          SizedBox(
                            width: 225,
                            child: TextField(
                                controller: lastName,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(gapPadding: 10),
                                  hintText: 'insert Your name',
                                ),
                                onChanged: (lastname) {
                                  print('$lastname');
                                }),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Email*'),
                      TextField(
                          keyboardType: TextInputType.emailAddress,
                          controller: email,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(gapPadding: 10),
                            hintText: 'yourmail@mail.com',
                          ),
                          onChanged: (email) {
                            print('$email');
                          }),
                      SizedBox(
                        height: 10,
                      ),
                      Text('what can we help you With?'),
                      TextField(
                        controller: content,
                        keyboardType: TextInputType.multiline,
                        maxLines: 3,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                          child: Text('Sumbit'),
                          onPressed: () {
                            String name_first = firstName.text;
                            String last_name = lastName.text;
                            String mail = email.text;
                            String desk = content.text;

                            setState(() {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text('Message sent!'),
                                    content: Column(
                                      children: [
                                        Text('Name : $name_first  $last_name'),
                                        Text('Email : $mail'),
                                        Text('Message : $desk'),
                                      ],
                                    ),
                                    actions: [
                                      TextButton(
                                        child: Text('close'),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                    ],
                                  );
                                },
                              );
                            });
                            firstName.clear();
                            lastName.clear();
                            email.clear();
                            content.clear();
                          }),
                    ],
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
