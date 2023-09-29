import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: <Widget>[
        const DrawerHeader(
          decoration: BoxDecoration(color: Color.fromARGB(255, 240, 214, 214)),
          child: Text('Drawer Header'),
        ),
        ListTile(
          title: Text('Menu 1'),
        ),
        ListTile(
          title: Text('Menu 2'),
        )
      ],
    ));
  }
}
