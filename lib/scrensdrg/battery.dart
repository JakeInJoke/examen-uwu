import 'package:flutter/material.dart';

class Battery extends StatelessWidget {
  const Battery({Key? key}) : super(key: key);

  static const String routeName = "/bateria";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bateria"),
      ),
      body: Container(
        child: Center(
          child: Text("Pantalla de Bateria"),
        ),
      ),
    );
  }
}
