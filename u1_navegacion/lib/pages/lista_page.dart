import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:u1_navegacion/constants.dart';
import 'package:u1_navegacion/pages/lista/audifonos_page.dart';
import 'package:u1_navegacion/pages/lista/celulares_page.dart';
import 'package:u1_navegacion/pages/lista/notebooks_page.dart';
import 'package:u1_navegacion/pages/lista/tablets_page.dart';

class ListaPage extends StatelessWidget {
  const ListaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejemplo Lista'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            ListTile(
              leading: Icon(MdiIcons.headphones, color: Color(kSecondary), size: 30),
              title: Text('Audífonos'),
              onTap: () {
                MaterialPageRoute ruta = new MaterialPageRoute(
                  builder: (context) {
                    return AudifonosPage();
                  },
                );
                Navigator.push(context, ruta);
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(MdiIcons.cellphone, color: Color(kSecondary), size: 30),
              title: Text('Celulares'),
              onTap: () {
                MaterialPageRoute ruta = new MaterialPageRoute(builder: (context) {
                  return CelularesPage();
                });
                Navigator.push(context, ruta);
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(MdiIcons.laptop, color: Color(kSecondary), size: 30),
              title: Text('Notebooks'),
              onTap: () {
                MaterialPageRoute ruta = MaterialPageRoute(
                  builder: (context) => NotebooksPage(),
                );
                Navigator.push(context, ruta);
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(MdiIcons.tablet, color: Color(kSecondary), size: 30),
              title: Text('Tablets'),
              onTap: () => _navegar(context, TabletsPage()),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }

  //función para navegar
  void _navegar(BuildContext context, Widget pagina) {
    MaterialPageRoute ruta = MaterialPageRoute(builder: (context) => pagina);
    Navigator.push(context, ruta);
  }
}
