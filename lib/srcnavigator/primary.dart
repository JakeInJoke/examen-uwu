import 'package:ex2/srcnavigator/second.dart';
import 'package:flutter/material.dart';

class Primary extends StatefulWidget {
  @override
  _PrimaryState createState() => new _PrimaryState();
}

class _PrimaryState extends State<Primary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Primera pantalla"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Mostrar pantalla"),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Second()));
          },
        ),
      ),
    );
  }
}
