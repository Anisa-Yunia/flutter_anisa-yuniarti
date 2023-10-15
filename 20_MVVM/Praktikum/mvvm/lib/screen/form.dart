import 'package:flutter/material.dart';
import 'package:mvvm/models/contact.dart';
import 'package:mvvm/provider/contact.dart';
import 'package:provider/provider.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({Key? key}) : super(key: key);

  @override
  _ContactFormState createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final contactProvider = Provider.of<Contacts>(context);

    return Form(
      key: formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            controller: nameController,
            decoration: const InputDecoration(labelText: "Name"),
            validator: (value) {
              if (value!.isEmpty) {
                return "Please enter a name.";
              }
              return null;
            },
          ),
          TextFormField(
            controller: phoneController,
            decoration: const InputDecoration(labelText: "Phone Number"),
            validator: (value) {
              if (value!.isEmpty) {
                return "Please enter a phone number.";
              }
              return null;
            },
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                contactProvider.addContact(Contact(
                  name: nameController.text,
                  numb: phoneController.text,
                ));
                nameController.clear();
                phoneController.clear();
                // Panggil setState untuk memperbarui tampilan setelah menambahkan kontak.
                setState(() {});
              }
            },
            child: const Text("Add Contact"),
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 200, // Tentukan tinggi sesuai kebutuhan
            child: ListView.separated(
              itemCount: contactProvider.contacts.length,
              separatorBuilder: (context, index) =>
                  Divider(), // Garis pemisah antara item
              itemBuilder: (context, index) {
                final contact = contactProvider.contacts[index];
                return ListTile(
                  title: Text(contact.name),
                  subtitle: Text(contact.numb),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: () {
                              setState(() {});
                            },
                          ),
                          IconButton(
                              icon: const Icon(Icons.edit), onPressed: () {}),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
