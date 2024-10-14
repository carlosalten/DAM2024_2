import 'package:f1_cliente/constants.dart';
import 'package:f1_cliente/services/constructores_service.dart';
import 'package:f1_cliente/services/pilotos_service.dart';
import 'package:flutter/material.dart';

class DriverEditarPage extends StatefulWidget {
  const DriverEditarPage({super.key, required this.pilotoId});
  final int pilotoId;
  @override
  State<DriverEditarPage> createState() => _DriverEditarPageState();
}

class _DriverEditarPageState extends State<DriverEditarPage> {
  final formKey = GlobalKey<FormState>();

  TextEditingController nombreCtrl = TextEditingController();
  TextEditingController apellidoCtrl = TextEditingController();
  TextEditingController numeroCtrl = TextEditingController();
  TextEditingController puntosCtrl = TextEditingController();
  int? equipoSeleccionado;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Editar Piloto'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: FutureBuilder(
            future: PilotosService().getPiloto(widget.pilotoId),
            builder: (context, AsyncSnapshot snapshot) {
              if (!snapshot.hasData || snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator(color: Color(kPrimaryColor)));
              }
              var piloto = snapshot.data;

              nombreCtrl.text = piloto['nombre'];
              apellidoCtrl.text = piloto['apellido'];
              numeroCtrl.text = piloto['numero'].toString();
              puntosCtrl.text = piloto['puntos'].toString();
              equipoSeleccionado = piloto['equipo'] != null ? piloto['equipo_id'] : null;

              return Form(
                key: formKey,
                child: ListView(
                  children: [
                    //nombre del piloto
                    TextFormField(
                      controller: nombreCtrl,
                      decoration: InputDecoration(
                        labelText: 'Nombre',
                      ),
                    ),
                    //apellido del piloto
                    TextFormField(
                      controller: apellidoCtrl,
                      decoration: InputDecoration(
                        labelText: 'Apellido',
                      ),
                    ),
                    //número del auto
                    TextFormField(
                      controller: numeroCtrl,
                      decoration: InputDecoration(
                        labelText: 'Número Auto',
                      ),
                      keyboardType: TextInputType.number,
                    ),
                    //puntaje
                    TextFormField(
                      controller: puntosCtrl,
                      decoration: InputDecoration(
                        labelText: 'Puntos',
                      ),
                      keyboardType: TextInputType.number,
                    ),
                    //equipo
                    FutureBuilder(
                      future: ConstructoresService().equipos(),
                      builder: (context, AsyncSnapshot snapshot) {
                        //esperando respuesta
                        if (!snapshot.hasData || snapshot.connectionState == ConnectionState.waiting) {
                          return Text('Cargando equipos...');
                        }
                        //ya tengo los datos
                        var equipos = snapshot.data;
                        return DropdownButtonFormField<int>(
                          value: equipoSeleccionado,
                          onChanged: (value) {
                            equipoSeleccionado = value!;
                          },
                          items: equipos.map<DropdownMenuItem<int>>((equipo) {
                            return DropdownMenuItem<int>(
                              child: Text(equipo['nombre']),
                              value: equipo['id'],
                            );
                          }).toList(),
                        );
                      },
                    ),

                    //botón
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      width: double.infinity,
                      child: ElevatedButton(
                        child: Text('Editar Piloto'),
                        onPressed: () {
                          //enviar datos a API

                          //volver a página de pilotos
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
