// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://plus.unsplash.com/premium_photo-1681488290603-2d461cf4d72d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2029&q=80'), // Gantilah URL dengan URL gambar Anda.
                fit: BoxFit.cover,
              ),
            ),
            child: Text(' '),
          ),
          ListTile(
            title: Text('Contact Us'),
            onTap: () {
              // Navigasi ke rute "Form" ketika ListTile "Form" diklik
              Navigator.of(context).pushNamed('/contact');
            },
          ),
          ListTile(
            title: Text('About Us'),
            onTap: () {
              // Navigasi ke rute "Galeri" ketika ListTile "Galeri" diklik
              Navigator.of(context).pushNamed('/about');
            },
          ),
          ListTile(
            title: Text('Log out'),
            onTap: () {
              // Navigasi ke rute "Galeri" ketika ListTile "Galeri" diklik
              Navigator.of(context).pushNamed('/login');
            },
          ),
        ],
      ),
    );
  }
}
