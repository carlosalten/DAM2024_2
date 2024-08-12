import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejemplo Listas', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            //TITULO DE PAGINA
            Container(
              padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
              child: Text(
                'Equipamiento Informática',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            //LISTA DE EQUIPOS
            Expanded(
              child: ListView(
                children: [
                  Divider(),
                  ListTile(
                    title: Text('Dell Latitude 3520'),
                    subtitle: Text('Laboratorio U100'),
                    leading: Icon(
                      MdiIcons.laptop,
                      color: Colors.deepOrange,
                      size: 30,
                    ),
                    trailing: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.deepOrange),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: Text('35', style: TextStyle(fontSize: 18)),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Dell Inspiron'),
                    subtitle: Text('Laboratorio U101'),
                    leading: Icon(
                      MdiIcons.laptop,
                      color: Colors.deepOrange,
                      size: 30,
                    ),
                    trailing: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.deepOrange),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: Text('32', style: TextStyle(fontSize: 18)),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    title: Text('LenovoX1'),
                    subtitle: Text('Laboratorio U200'),
                    leading: Icon(
                      MdiIcons.laptop,
                      color: Colors.deepOrange,
                      size: 30,
                    ),
                    trailing: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.deepOrange),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: Text('40', style: TextStyle(fontSize: 18)),
                    ),
                  ),
                  Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
