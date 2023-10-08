import 'package:flutter/material.dart';
import 'package:provide/screen/contact.dart';
import 'package:provider/provider.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Consumer<Contacts>(
        builder: (context, contacts, child) {
          return ListView.builder(
            itemCount: contacts.contacts.length,
            itemBuilder: (context, index) {
              final contact = contacts.contacts[index];
              return ListTile(
                title: Text(contact.name),
                subtitle: Text(contact.numb),
              );
            },
          );
        },
      ),
    );
  }
}
