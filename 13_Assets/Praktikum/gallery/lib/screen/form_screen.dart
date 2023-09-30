import 'package:flutter/material.dart';
import 'package:gallery/screen/form.dart';
import 'package:gallery/widget/drawer_widget.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          title: Text("Create New Contact"),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Contact(),
        ));
  }
}
