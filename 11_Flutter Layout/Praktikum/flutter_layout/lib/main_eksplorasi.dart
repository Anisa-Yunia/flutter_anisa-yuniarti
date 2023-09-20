import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFF6200EE),
        ),
        //primary: Color(0xFF6200EE)
        // primaryColor: const Color(0xFF6200EE), // Warna Utama (Purple)
        //scaffoldBackgroundColor: Colors.white, // Warna latar belakang scaffold
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Flutter App'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search), color: Colors.white70, onPressed: () {})
        ],
      ),
      body: ListView(
        children: const <Widget>[
          ListTile(
            title: Text('Learn Flutter'),
          ),
          ListTile(
            title: Text('Learn ReactJS'),
          ),
          ListTile(
            title: Text('Learn VueJS'),
          ),
          ListTile(
            title: Text('Learn Tailwind CSS'),
          ),
          ListTile(
            title: Text('Learn UI/UX'),
          ),
          ListTile(
            title: Text('Learn Figma'),
          ),
          ListTile(
            title: Text('Learn Digital Marketing'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Tambahkan aksi untuk tombol Floating Action Button di sini
          },
          child: Icon(Icons.add),
          shape: const CircleBorder(),
          backgroundColor: Color(0xFF03DAC5)),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_rounded,
            ),
            label: 'favorite',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.info_outline_rounded), label: 'Information')
        ],
        backgroundColor: Color(0xFF6200EE),
        fixedColor: Colors.white,
        unselectedItemColor: Colors.white70,
      ),
    );
  }
}
