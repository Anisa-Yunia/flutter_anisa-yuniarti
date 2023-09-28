import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('John Doe'), // Nama Pengguna
            accountEmail: Text('johndoe@example.com'), // Email Pengguna
            currentAccountPicture: CircleAvatar(
              backgroundImage:
                  AssetImage('assets/profile_picture.jpg'), // Gambar Profil
            ),
            decoration: BoxDecoration(
              color: Colors.deepPurple, // Warna latar belakang header
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              // Tambahkan aksi yang ingin dilakukan saat item menu diklik
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Setting'),
            onTap: () {
              // Tambahkan aksi yang ingin dilakukan saat item menu diklik
            },
          ),
          // Tambahkan item-menu lain sesuai kebutuhan
        ],
      ),
    );
  }
}
