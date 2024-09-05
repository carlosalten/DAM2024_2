import 'package:flutter/material.dart';
import 'package:u1_navegacion2/data/constants.dart';
import 'package:u1_navegacion2/data/datos.dart';

class EmpresasPage extends StatelessWidget {
  const EmpresasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: empresas.length,
      itemBuilder: (context, index) {
        var empresa = empresas[index];
        return ListTile(
          leading: Icon(empresa['icono'], color: Colors.white),
          title: Text('${empresa['nombre']} (${empresa['simbolo']})', style: TextStyle(fontSize: 18)),
          subtitle: Text(empresa['sector']),
          trailing: Text(empresa['mercado']),
          tileColor: Color(coloresEmpresas[index]),
          textColor: Colors.white,
        );
      },
    );
  }
}
