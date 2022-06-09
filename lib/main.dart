import 'package:ex2/home.dart';
import 'package:ex2/scrensdrg/contact.dart';
import 'package:ex2/scrensdrg/battery.dart';
import 'package:ex2/scrensdrg/settings.dart';
import 'package:ex2/srclistainfinita/infinita.dart';
import 'package:ex2/srcnavigator/primary.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: Home(),
    routes: <String, WidgetBuilder>{
      Settings.routeName: (BuildContext context) => Settings(),
      Battery.routeName: (BuildContext context) => Battery(),
      Contact.routeName: (BuildContext context) => Contact(),
      Infinita.routeName: (BuildContext context) => Infinita(),
    },
  ));
}
