import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter layout',
        theme: ThemeData.dark().copyWith(
          colorScheme: const ColorScheme.dark(),
          useMaterial3: true,
        ),
        home: Scaffold(
          // Drawer
          drawer: Drawer(
            child: ListView(
              children: const [
                ListTile(
                  title: Text('Home'),
                ),
                ListTile(
                  title: Text('Setting'),
                )
              ],
            ),
          ),
          //App Bar
          appBar: AppBar(
              title: const Text('This Is Material App'), centerTitle: true),
          //Body
          body: ListView(
            children: const <Widget>[
              ListTile(
                leading: CircleAvatar(child: Text('A')),
                title: Text('Anisa'),
                subtitle: Text('+62-8951-8281-109'),
              ),
              ListTile(
                leading: CircleAvatar(child: Text('P')),
                title: Text('Putri'),
                subtitle: Text('+62-8231-9990-122'),
              ),
              ListTile(
                leading: CircleAvatar(child: Text('D')),
                title: Text('Delia'),
                subtitle: Text('+62-8991-2234-990'),
              ),
              ListTile(
                leading: CircleAvatar(child: Text('M')),
                title: Text('Mala'),
                subtitle: Text('+62-8123-0000-109'),
              ),
              ListTile(
                leading: CircleAvatar(child: Text('R')),
                title: Text('Rani'),
                subtitle: Text('+62-8991-8224-111'),
              ),
              ListTile(
                leading: CircleAvatar(child: Text('N')),
                title: Text('Nita'),
                subtitle: Text('+62-8921-8233-122'),
              ),
              ListTile(
                leading: CircleAvatar(child: Text('K')),
                title: Text('Kata'),
                subtitle: Text('+62-8951-2334-221'),
              ),
              ListTile(
                leading: CircleAvatar(child: Text('R')),
                title: Text('Rachel'),
                subtitle: Text('+62-8999-8888-201'),
              ),
            ],
          ),
          bottomNavigationBar:
              BottomNavigationBar(items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Setting')
          ]),
        ));
  }
}
