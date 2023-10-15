import 'package:flutter/material.dart';
import 'package:mvvm/models/contact.dart';

class Contacts with ChangeNotifier {
  final List<Contact> _contacts = [];

  List<Contact> get contacts => _contacts;

  void addContact(Contact contact) {
    _contacts.add(contact);
    notifyListeners();
  }
}
