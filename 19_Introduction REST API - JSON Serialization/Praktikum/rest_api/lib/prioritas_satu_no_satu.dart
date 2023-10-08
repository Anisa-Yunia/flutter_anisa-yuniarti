//import 'package:rest_api_client/rest_api_client.dart' as rest_api_client;
import 'package:dio/dio.dart';

void main() {
  Dio()
      .get(
          'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts')
      .then((response) {
    print(response);
  });

  print('result post');

  Dio().post(
      'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts',
      data: {'name': 'anisa', 'phone': 0891}).then((response) {
    print(response.data);
  });
}
