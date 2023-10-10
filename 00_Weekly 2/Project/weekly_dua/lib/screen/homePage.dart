import 'package:flutter/material.dart';
import 'package:weekly_dua/widget/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nugas YuK"),
      ),
      drawer: const MyDrawer(),
      body: const Center(
        child: Text("Selamat datang di halaman utama!"),
      ),
    );
  }
}
