import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          const DrawerHeader(
            decoration:
                BoxDecoration(color: Color.fromARGB(255, 240, 214, 214)),
            child: Text(' '),
          ),
          ListTile(
            title: Text('Form'),
            onTap: () {
              // Navigasi ke rute "Form" ketika ListTile "Form" diklik
              Navigator.of(context).pushNamed('/form');
            },
          ),
          ListTile(
            title: Text('Galeri'),
            onTap: () {
              // Navigasi ke rute "Galeri" ketika ListTile "Galeri" diklik
              Navigator.of(context).pushNamed('/');
            },
          ),
        ],
      ),
    );
  }
}
