import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  Drawer getDrawer(BuildContext context) {
    var header = DrawerHeader(
      child: Center(
        child: Container(
          width: double.infinity,
          child: Text(
            "Ajustes de aplicacion",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          padding: EdgeInsets.zero,
        ),
      ),
    );

    var info = AboutListTile(
      child: Text("Informacion APP"),
      applicationIcon: Icon(Icons.favorite),
      applicationVersion: "v1.0.0",
      icon: Icon(Icons.info),
    );

    ListTile getItem(Icon icon, String description, String route) {
      return ListTile(
        leading: icon,
        title: Text(description),
        onTap: () {
          Navigator.pushNamed(context, route);
        },
      );
    }

    ListView getList() {
      return ListView(
        children: <Widget>[
          header,
          getItem(Icon(Icons.settings), 'Configuracion', '/configuracion'),
          getItem(Icon(Icons.home), 'Pagina Principal', ''),
          getItem(Icon(Icons.battery_charging_full), 'Bateria', '/bateria'),
          getItem(Icon(Icons.contact_mail), 'Contact', '/contactitem'),
          getItem(Icon(Icons.shopping_cart), 'Lista', '/infinita'),
          info
        ],
      );
    }

    return Drawer(
      child: getList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Página Principal"),
      ),
      drawer: Drawer(
        child: getDrawer(context),
      ),
    );
  }
}
