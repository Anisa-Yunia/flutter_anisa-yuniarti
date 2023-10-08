import 'package:flutter/material.dart';

class DetailGaleri extends StatelessWidget {
  final String imageUrl;

  const DetailGaleri({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Gambar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Wrap gambar dengan Hero dengan tag yang sama
            Hero(
              tag: 'image_$imageUrl',
              child: Image.network(imageUrl),
            ),
            SizedBox(height: 16.0),
            Text('Deskripsi Gambar'),
            // Tambahkan deskripsi atau konten detail lainnya di sini
          ],
        ),
      ),
    );
  }
}
