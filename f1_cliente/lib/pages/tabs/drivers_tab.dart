import 'package:f1_cliente/services/pilotos_service.dart';
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
        child: FutureBuilder(
          future: PilotosService().pilotosConEquipo(),
          builder: (context, AsyncSnapshot snapshot) {
            if (!snapshot.hasData || snapshot.connectionState == ConnectionState.waiting) {
              //esperanding datos
              return Center(
                // child: Text('Esperando Datos...', style: TextStyle(color: Colors.white)),
                child: CircularProgressIndicator(color: Colors.white),
              );
            }
            //llegaron los datos
            //mostrar
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context, index) {
                var piloto = snapshot.data[index];
                return DriverTile(
                  numero: piloto['numero'],
                  nombre: piloto['nombre'],
                  apellido: piloto['apellido'],
                  equipo: piloto['equipo']['nombre'],
                  color: int.parse('0xFF' + piloto['equipo']['color']),
                  puntos: piloto['puntos'],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
