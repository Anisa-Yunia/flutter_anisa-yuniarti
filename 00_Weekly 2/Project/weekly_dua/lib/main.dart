import 'package:flutter/material.dart';
import 'package:weekly_dua/screen/aboutUs.dart';
import 'package:weekly_dua/screen/contactUs.dart';
import 'package:weekly_dua/screen/homePage.dart';
import 'package:weekly_dua/screen/login.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Nugas Yuk',
        initialRoute: '/',
        routes: {
          '/contact': (_) => const ContactUsPage(),
          '/about': (_) => const AboutUsPage(),
          '/login': (_) => LoginPage(),
          '/homepage': (_) => HomePage()
        },
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        home: LoginPage());
  }
}
