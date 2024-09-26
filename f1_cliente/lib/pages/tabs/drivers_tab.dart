import 'package:f1_cliente/data/datos.dart';
import 'package:f1_cliente/widgets/driver_tile.dart';
import 'package:flutter/material.dart';

class DriversTab extends StatelessWidget {
  const DriversTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/drivers_bg.jpg'),
          fit: BoxFit.fitWidth,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 5),
        child: ListView.builder(
          itemCount: drivers.length,
          itemBuilder: (context, index) {
            var driver = drivers[index];
            return DriverTile(
              numero: index + 1,
              nombre: driver['nombre'],
              apellido: driver['apellido'],
              equipo: driver['equipo'],
              color: driver['color'],
              puntos: driver['puntos'],
            );
          },
        ),
      ),
    );
  }
}
