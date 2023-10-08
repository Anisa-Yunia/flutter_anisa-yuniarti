import 'package:dio/dio.dart';

class Contact {
  final int id;
  final String name;
  final String phone;

  Contact({
    required this.id,
    required this.name,
    required this.phone,
  });

  factory Contact.fromJson(Map<String, dynamic> json) {
    return Contact(
      id: json['id'] as int,
      name: json['name'] as String,
      phone: json['phone'] as String,
    );
  }
}

Future<Contact> fetchContact() async {
  final dio = Dio();
  final response = await dio.get(
    'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts/2',
  );

  if (response.statusCode == 200) {
    final Map<String, dynamic> jsonMap = response.data;
    return Contact.fromJson(jsonMap);
  } else {
    throw Exception('Failed to load contact');
  }
}

void main() async {
  try {
    final contact = await fetchContact();
    print('Contact ID: ${contact.id}');
    print('Contact Name: ${contact.name}');
    print('Contact Phone: ${contact.phone}');
  } catch (e) {
    print('Error: $e');
  }
}
