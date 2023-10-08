import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DiceBear Avatar',
      home: AvatarScreen(),
    );
  }
}

class AvatarScreen extends StatefulWidget {
  @override
  _AvatarScreenState createState() => _AvatarScreenState();
}

class _AvatarScreenState extends State<AvatarScreen> {
  String avatarSvg = '';

  @override
  void initState() {
    super.initState();
    fetchAvatar();
  }

  Future<void> fetchAvatar() async {
    final response =
        await http.get(Uri.parse('https://api.dicebear.com/7.x/thumbs/svg'));

    if (response.statusCode == 200) {
      setState(() {
        avatarSvg = response.body;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DiceBear Avatar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            avatarSvg.isNotEmpty
                ? Container(
                    width: 100,
                    height: 100,
                    child: SvgPicture.string(
                      avatarSvg,
                      fit: BoxFit.contain,
                      semanticsLabel: 'DiceBear Avatar',
                    ),
                  )
                : CircularProgressIndicator(),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: fetchAvatar,
              child: Text('Load Avatar'),
            ),
          ],
        ),
      ),
    );
  }
}
