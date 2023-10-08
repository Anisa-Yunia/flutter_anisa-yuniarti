import 'package:dio/dio.dart';

void main() async {
  final dio = Dio();

  // Data yang akan di-PUT
  final putData = {
    "userId": 1,
    "id": 1,
    "title": "Updated Title",
    "body": "Updated Body"
  };

  try {
    final response = await dio.put(
      'https://jsonplaceholder.typicode.com/posts/1',
      data: putData,
    );

    // Cek apakah response sukses (status code 200)
    if (response.statusCode == 200) {
      print('PUT request berhasil:');
      print('Response Data:');
      print(response.data);
    } else {
      print('PUT request gagal dengan status code: ${response.statusCode}');
    }
  } catch (error) {
    print('Terjadi kesalahan: $error');
  }
}
