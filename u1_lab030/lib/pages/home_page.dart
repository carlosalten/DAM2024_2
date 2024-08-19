import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:u1_lab03/pages/datos.dart';
import 'package:u1_lab03/widgets/equipo_widget.dart';
import 'package:u1_lab03/widgets/usuario_widget.dart';

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
              child: ListView.separated(
                separatorBuilder: (_, __) => Divider(),
                itemCount: usuarios.length,
                itemBuilder: (context, index) {
                  var user = usuarios[index];
                  return UsuarioWidget(user: user);
                },
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
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: equipos.length,
                itemBuilder: (context, index) {
                  //var equipo = equipos[index];
                  return EquipoWidget(equipo: equipos[index]);
                },
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
