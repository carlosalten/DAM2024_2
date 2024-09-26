import 'package:f1_cliente/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConstructorTile extends StatelessWidget {
  const ConstructorTile({
    super.key,
    required this.numero,
    required this.nombre,
    required this.pilotos,
    required this.color,
    required this.puntos,
  });

  final int numero;
  final String nombre;
  final List pilotos;
  final int color;
  final int puntos;

  @override
  Widget build(BuildContext context) {
    TextStyle estiloNumero = GoogleFonts.oxanium(textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey.shade600));

    TextStyle estiloNombre = GoogleFonts.oxanium(textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 16));
    TextStyle estiloPiloto = GoogleFonts.oxanium(textStyle: TextStyle(fontWeight: FontWeight.normal, fontSize: 12));

    TextStyle estiloPuntos = GoogleFonts.oxanium(textStyle: TextStyle(color: Colors.black87, fontSize: 12));
    TextStyle estiloValorPuntos = GoogleFonts.oxanium(textStyle: TextStyle(fontWeight: FontWeight.bold));

    String pilotos = '';
    for (int i = 0; i < this.pilotos.length; i++) {
      var piloto = this.pilotos[i];
      pilotos += piloto['apellido'] + (i < this.pilotos.length - 1 ? ' / ' : '');
    }

    return Container(
      height: 60,
      margin: EdgeInsets.only(bottom: 4),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(3),
          bottomRight: Radius.circular(3),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 25,
            alignment: Alignment.center,
            child: Text(this.numero.toString(), style: estiloNumero),
          ),
          VerticalDivider(
            color: Color(this.color),
            thickness: 4,
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(this.nombre, style: estiloNombre),
              Text(pilotos, style: estiloPiloto),
            ],
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(15),
            ),
            child: RichText(
              text: TextSpan(
                style: estiloPuntos,
                children: [
                  TextSpan(text: this.puntos.toString(), style: estiloValorPuntos),
                  TextSpan(text: ' PTS'),
                ],
              ),
            ),
          ),
          Icon(Icons.keyboard_arrow_right, color: Color(kPrimaryColor)),
        ],
      ),
    );
  }
}
