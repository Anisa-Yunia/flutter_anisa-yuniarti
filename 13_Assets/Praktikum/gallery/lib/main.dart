import 'package:flutter/material.dart';
//import 'package:gallery/screen/form.dart';
import 'package:gallery/screen/form_screen.dart';
import 'package:gallery/widget/bottom_navigato.dart';
import 'package:gallery/widget/drawer_widget.dart';
import 'screen/galeri.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gallery Trial',
      initialRoute: '/',
      routes: {
        '/galeri': (_) => MyGridView(),
        '/form': (_) => const FormScreen(),
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

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
