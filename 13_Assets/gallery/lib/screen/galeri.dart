import 'package:flutter/material.dart';
import 'detail_galeri.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Grid View Example'),
        ),
        body: MyGridView(),
      ),
    );
  }
}

class MyGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      children: [
        CardExample(
          imageUrl:
              'https://images.unsplash.com/photo-1471899236350-e3016bf1e69e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fGZsb3dlcnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60',
        ),
        CardExample(
          imageUrl:
              'https://images.unsplash.com/photo-1520763185298-1b434c919102?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fGZsb3dlcnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60',
        ),
        CardExample(
          imageUrl:
              'https://plus.unsplash.com/premium_photo-1675807480763-4ae9d850657d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8Zmxvd2VyfGVufDB8fDB8fHww&auto=format&fit=crop&w=600&q=60',
        ),
      ],
    );
  }
}

class CardExample extends StatelessWidget {
  final String imageUrl;

  const CardExample({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return Container(
                padding: EdgeInsets.all(30.0), // Tambahkan padding
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(
                        height: 150,
                        width: 150,
                        child: Image.network(imageUrl)),
                    SizedBox(height: 12.0), // Berikan jarak di bawah gambar
                    //Text('Gambar 1',
                    //style: TextStyle(
                    //  fontSize: 14.0, fontWeight: FontWeight.bold)),
                    SizedBox(height: 6.0), // Berikan jarak
                    Text('Apakah Anda ingin melihat lebih detail ?'),
                    SizedBox(height: 10.0), // Berikan jarak
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                          child: const Text('Ya'),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    DetailGaleri(imageUrl: imageUrl),
                              ),
                            );
                          },
                        ),
                        ElevatedButton(
                          child: const Text('Tidak'),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          );

          debugPrint('Card tapped.');
        },
        child: SizedBox(
            child: Hero(
          tag: 'thumbnail_$imageUrl', // Tag harus unik
          child: Image.network(imageUrl),
        )),
      ),
    );
  }
}
