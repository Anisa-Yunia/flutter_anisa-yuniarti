import 'package:flutter/material.dart';
import 'package:mvvm/provider/contact.dart';
import 'package:mvvm/screen/form_screen.dart';
import 'package:mvvm/widget/bottom_navigato.dart';
import 'package:mvvm/widget/drawer_widget.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
        create: (_) => Contacts()), // Periksa nama kelas Contacts ini
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Contact',
        initialRoute: '/',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        home: home());
  }
}

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      bottomNavigationBar: mybottomnav(),
      appBar: AppBar(
        title: const Text("My Contact"),
        backgroundColor: Color.fromARGB(255, 240, 214, 214),
        centerTitle: true,
      ),
      body: FormScreen(),
      //bottomSheet: BottomSheet(builder: , onClosing: () {  },),
    );
  }
}
