import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class EquipoWidget extends StatelessWidget {
  const EquipoWidget({
    super.key,
    required this.equipo,
  });

  final dynamic equipo;

  @override
  Widget build(BuildContext context) {
    return Container(
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
          Text(equipo['marca'], style: TextStyle(color: Colors.white)),
          Text(equipo['modelo'], style: TextStyle(color: Colors.white)),
          Text(equipo['so'], style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
