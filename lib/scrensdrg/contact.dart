import 'package:ex2/screenscontact/contactitem.dart';
import 'package:ex2/srclistas/model/contact_model.dart';
import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  static const String routeName = "/contactitem";

  buildList() {
    return <ContactModel>[
      ContactModel(name: "Rodrigo Morales", email: "rmorales@gmail.com"),
      ContactModel(name: "Naylet Andres", email: "nandres@gmail.com"),
      ContactModel(name: "Carlos Andres", email: "candres@gmail.com"),
      ContactModel(name: "Antonio Julca", email: "ajulca@gmail.com"),
      ContactModel(name: "Luis Torres", email: "ltorres@gmail.com"),
      ContactModel(name: "Angela Alor", email: "aalor@gmail.com")
    ];
  }

  List<ContactItem> buildContactList() {
    return buildList()
        .map<ContactItem>((contact) => ContactItem(
              contact: contact,
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact"),
      ),
      body: ListView(
        children: buildContactList(),
      ),
    );
  }
}
