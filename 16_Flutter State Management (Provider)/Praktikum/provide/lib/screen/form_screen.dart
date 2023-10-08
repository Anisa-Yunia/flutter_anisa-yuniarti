import 'package:flutter/material.dart';

import 'package:provide/screen/form.dart';

import 'package:provide/widget/drawer_widget.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: const Text("Create New Contact"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ContactForm(),
              //SizedBox(height: 10),
              //ContactList()
            ],
          ),
        ),
      ),
    );
  }
}
