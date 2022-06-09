import 'package:ex2/srclistas/model/contact_model.dart';
import 'package:flutter/material.dart';

class ContactItem extends StatelessWidget {
  static const String routeName = "/contactitem";
  final ContactModel? contact;

  ContactItem({this.contact});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Text("C"),
      ),
      title: Text(contact!.name!),
      subtitle: Text(contact!.email!),
    );
  }
}
