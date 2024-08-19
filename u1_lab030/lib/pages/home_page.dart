import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:u1_lab03/pages/datos.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //APPBAR
      appBar: AppBar(
        leading: Icon(MdiIcons.squareRoundedBadgeOutline, color: Colors.white),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Laboratorio 3', style: TextStyle(fontSize: 18, color: Colors.white)),
            Text('Desarrollo de Aplicaciones Móviles', style: TextStyle(fontSize: 12, color: Colors.white)),
          ],
        ),
        backgroundColor: Color(kSeccion1),
      ),
      //BODY
      body: Column(
        children: [
          //usuarios
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            width: double.infinity,
            color: Color(kSeccion2),
            child: Text('Usuarios del Sistema', style: TextStyle(fontSize: 18, color: Colors.white)),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.only(bottom: 10),
              color: Color(kSeccion2),
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(MdiIcons.accountCircle, size: 26, color: Colors.white),
                    title: Text('proncelli0@deliciousdays.com', style: TextStyle(fontSize: 14, color: Colors.white)),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(MdiIcons.ipNetworkOutline, color: Colors.white),
                            Text('201.138.2.128', style: TextStyle(fontSize: 12, color: Colors.white)),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(MdiIcons.cellphone, size: 18, color: Colors.white),
                            Text('579-725-2341', style: TextStyle(fontSize: 12, color: Colors.white)),
                          ],
                        ),
                      ],
                    ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Ultima Conexión:', style: TextStyle(color: Colors.white)),
                        Text('10/08/2024', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(MdiIcons.accountCircle, size: 26, color: Colors.white),
                    title: Text('jhannen1@yolasite.com', style: TextStyle(fontSize: 14, color: Colors.white)),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(MdiIcons.ipNetworkOutline, color: Colors.white),
                            Text('21.17.140.203', style: TextStyle(fontSize: 12, color: Colors.white)),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(MdiIcons.cellphone, size: 18, color: Colors.white),
                            Text('688-781-6573', style: TextStyle(fontSize: 12, color: Colors.white)),
                          ],
                        ),
                      ],
                    ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Ultima Conexión:', style: TextStyle(color: Colors.white)),
                        Text('11/08/2024', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(MdiIcons.accountCircle, size: 26, color: Colors.white),
                    title: Text('tobradden2@canalblog.com', style: TextStyle(fontSize: 14, color: Colors.white)),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(MdiIcons.ipNetworkOutline, color: Colors.white),
                            Text('18.166.131.248', style: TextStyle(fontSize: 12, color: Colors.white)),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(MdiIcons.cellphone, size: 18, color: Colors.white),
                            Text('144-970-3119', style: TextStyle(fontSize: 12, color: Colors.white)),
                          ],
                        ),
                      ],
                    ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Ultima Conexión:', style: TextStyle(color: Colors.white)),
                        Text('09/08/2024', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                  Divider(),
                ],
              ),
            ),
          ),
          //productos
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            width: double.infinity,
            color: Color(kSeccion3),
            child: Text('Productos', style: TextStyle(fontSize: 18, color: Colors.white)),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.only(bottom: 10),
              color: Color(kSeccion3),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: EdgeInsets.all(3),
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: Icon(MdiIcons.cellphone, size: 40, color: Colors.white),
                        ),
                        Text('LG', style: TextStyle(color: Colors.white)),
                        Text('LG A395', style: TextStyle(color: Colors.white)),
                        Text('Feature phone', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(3),
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: Icon(MdiIcons.cellphone, size: 40, color: Colors.white),
                        ),
                        Text('NIU', style: TextStyle(color: Colors.white)),
                        Text('NIU Niutek N109', style: TextStyle(color: Colors.white)),
                        Text('Android 2.2', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(3),
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: Icon(MdiIcons.cellphone, size: 40, color: Colors.white),
                        ),
                        Text('Haier', style: TextStyle(color: Colors.white)),
                        Text('Haier V2000', style: TextStyle(color: Colors.white)),
                        Text('Feature phone', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          //PIE PAGINA
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            color: Color(kSeccion4),
            width: double.infinity,
            child: Text('Informática USM Viña del Mar', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
