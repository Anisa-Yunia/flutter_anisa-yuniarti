// ignore_for_file: prefer_const_constructors, use_build_context_synchronously, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:weekly_dua/screen/homePage.dart';

void main() {
  runApp(LoginPage());
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nugas YUK'),
      ),
      body: Center(
        child: LoginWidget(),
      ),
    );
  }
}

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isLoading =
      false; // Menambahkan variabel _isLoading untuk mengendalikan animasi

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 300,
          child: Image.network(
              'data:image/jpeg;base64,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'),
        ),
        Card(
            margin: EdgeInsets.all(16.0),
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                      icon: Icon(Icons.email),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  TextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      icon: Icon(Icons.lock),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _isLoading
                          ? CircularProgressIndicator() // Tampilkan animasi jika isLoading true
                          : ElevatedButton(
                              onPressed: () async {
                                setState(() {
                                  _isLoading = true;
                                });

                                // Simulasikan penundaan 2 detik untuk tujuan demonstrasi
                                await Future.delayed(Duration(seconds: 2));

                                String email = _emailController.text;
                                String password = _passwordController.text;

                                if (email.isNotEmpty && password.isNotEmpty) {
                                  // Berhasil, navigasikan ke halaman About Us
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomePage()),
                                  );
                                } else {
                                  showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                      title: Text('Login Gagal'),
                                      content: Text(
                                          'Email dan password harus diisi.'),
                                      actions: [
                                        ElevatedButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                            setState(() {
                                              _isLoading = false;
                                            });
                                          },
                                          child: Text('OK'),
                                        ),
                                      ],
                                    ),
                                  );
                                }
                              },
                              child: Text('Login'),
                            ),
                      ElevatedButton(onPressed: () {}, child: Text('Register')),
                    ],
                  )
                ],
              ),
            )),
      ],
    );
  }
}
