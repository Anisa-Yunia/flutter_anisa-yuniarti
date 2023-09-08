import 'package:flutter/material.dart';

void main() {
  runApp(const HelloWorld());

}
class HelloWorld extends StatelessWidget {
  const HelloWorld({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.amber
                ),
                child: Text('Drawer Header'),
              ),
              ListTile(
                title:  Text('Menu 1'),
              ),
              ListTile(
                title:  Text('Menu 2'),
              )
            ],
          )),
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: const Text('Halo nama aku anisa'),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.abc_outlined),
              label: 'User Verifikasi',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.abc_outlined),
              label: 'User Verifikasi',
            ),
            ]

        )
         ),
         
    );
  }
}

