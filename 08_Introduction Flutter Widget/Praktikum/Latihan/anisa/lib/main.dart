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
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: const Text('Halo nama aku anisar'),
         ),
    );
  }
}

