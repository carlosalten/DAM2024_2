import 'package:c1_2024/datos/campuses.dart';
import 'package:c1_2024/widgets/card_campus.dart';
import 'package:flutter/material.dart';

class TabCampuses extends StatelessWidget {
  const TabCampuses({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: campuses.length,
      itemBuilder: (context, index) {
        var campus = campuses[index];
        return CardCampus(
          nombre: campus['nombre'],
          imagen: campus['imagen'],
          direccion: campus['direccion'],
          insta: campus['instagram'],
        );
      },
    );
  }
}
