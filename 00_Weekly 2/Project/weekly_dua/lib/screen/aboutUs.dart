import 'package:flutter/material.dart';
import 'package:weekly_dua/widget/drawer.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: const Text("About Us"),
      ),
      body: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "About Us",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.all(16),
            elevation: 5,
            child: ListTile(
              leading: Icon(Icons.book_outlined),
              title: Text("Pembuatan Malakah Materi IPA kelas 10 SMA"),
              subtitle: Text(
                  "kami menawarkan pembuatan makalah untuk tugas biologi, fisikan dan kimia"),
            ),
          ),
          Card(
            margin: EdgeInsets.all(16),
            elevation: 5,
            child: ListTile(
              leading: Icon(Icons.book_outlined),
              title: Text("Pembuatan Nirwana"),
              subtitle: Text("Khusus untuk jurusan DKV"),
            ),
          ),
          Card(
            margin: EdgeInsets.all(16),
            elevation: 5,
            child: ListTile(
              leading: Icon(Icons.book_outlined),
              title: Text("Pembuatan Webiste Onlie "),
              subtitle: Text("CMS (Wordpress, Jomla), PHP Native, Laravel"),
            ),
          ),
        ],
      ),
    );
  }
}
