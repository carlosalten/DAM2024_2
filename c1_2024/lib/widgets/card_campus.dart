import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CardCampus extends StatelessWidget {
  const CardCampus({
    super.key,
    required this.nombre,
    required this.imagen,
    required this.direccion,
    required this.insta,
  });

  final String nombre;
  final String imagen;
  final String direccion;
  final String insta;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(5),
      height: 150,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFAAAAAA)),
        borderRadius: BorderRadius.circular(5),
        // color: Colors.white,
        gradient: LinearGradient(
          colors: [Colors.blue.shade100, Colors.white],
        ),
      ),
      child: Row(
        children: [
          Image.asset('assets/images/${this.imagen}'),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(this.nombre, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text(
                    this.direccion,
                    style: TextStyle(fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(MdiIcons.instagram, size: 16),
                      Text(this.insta, style: TextStyle(fontSize: 12)),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
