import 'package:flutter/material.dart';
import 'package:mvvm/screen/form.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
