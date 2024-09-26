import 'package:f1_cliente/services/constructores_service.dart';
import 'package:f1_cliente/widgets/constructor_tile.dart';
import 'package:flutter/material.dart';

class ConstructorsTab extends StatelessWidget {
  const ConstructorsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/constructors_bg.jpg'),
          fit: BoxFit.fitWidth,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 5),
        child: FutureBuilder(
          future: ConstructoresService().equiposConPilotosPuntos(),
          builder: (context, AsyncSnapshot snapshot) {
            if (!snapshot.hasData || snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(color: Colors.white),
              );
            }
            //llegaron los datos
            //mostrar
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context, index) {
                var equipo = snapshot.data[index];
                return ConstructorTile(
                  numero: index + 1,
                  nombre: equipo['nombre'],
                  color: int.parse('0xFF' + equipo['color']),
                  puntos: int.parse(equipo['puntos']),
                  pilotos: equipo['pilotos'],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
