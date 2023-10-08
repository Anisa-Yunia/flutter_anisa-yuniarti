import 'package:flutter/material.dart';
//import 'package:provide/models/model.dart';
import 'package:provide/screen/contact.dart'; // Periksa import ini
import 'package:provide/screen/form_screen.dart';
import 'package:provide/screen/galeri.dart';
import 'package:provide/widget/bottom_navigato.dart';
import 'package:provide/widget/drawer_widget.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
        create: (_) => Contacts()), // Periksa nama kelas Contacts ini
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Gallery',
        initialRoute: '/',
        routes: {
          '/galeri': (_) => MyGridView(),
          '/form': (_) => const FormScreen(),
        },
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
        title: const Text("My Gallery"),
        backgroundColor: Color.fromARGB(255, 240, 214, 214),
        centerTitle: true,
      ),
      body: MyGridView(),
      //bottomSheet: BottomSheet(builder: , onClosing: () {  },),
    );
  }
}
