import 'package:flutter/material.dart';
import 'package:gallery/widget/bottom_navigato.dart';
import 'package:gallery/widget/drawer_widget.dart';
import 'screen/galeri.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gallery Trial',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
        useMaterial3: true,
      ),
      home: Scaffold(
        drawer: MyDrawer(),
        bottomNavigationBar: mybottomnav(),
        appBar: AppBar(
          title: Text("My Gallery"),
          backgroundColor: Color.fromARGB(255, 240, 214, 214),
          centerTitle: true,
        ),
        body: MyGridView(),
        //bottomSheet: BottomSheet(builder: , onClosing: () {  },),
      ),
    );
  }
}
