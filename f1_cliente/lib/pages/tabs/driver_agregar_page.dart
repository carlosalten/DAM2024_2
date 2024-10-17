import 'package:f1_cliente/services/constructores_service.dart';
import 'package:f1_cliente/services/pilotos_service.dart';
import 'package:flutter/material.dart';

class DriverAgregarPage extends StatefulWidget {
  const DriverAgregarPage({super.key});

  @override
  State<DriverAgregarPage> createState() => _DriverAgregarPageState();
}

class _DriverAgregarPageState extends State<DriverAgregarPage> {
  final formKey = GlobalKey<FormState>();

  TextEditingController nombreCtrl = TextEditingController();
  TextEditingController apellidoCtrl = TextEditingController();
  TextEditingController numeroCtrl = TextEditingController();
  TextEditingController puntosCtrl = TextEditingController();
  int equipoSeleccionado = 0;

  String? nombreError;
  String? apellidoError;
  String? numeroError;
  String? puntosError;
  String? equipoError;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agregar Piloto'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              //nombre del piloto
              TextFormField(
                controller: nombreCtrl,
                decoration: InputDecoration(
                  labelText: 'Nombre',
                  errorText: nombreError,
                ),
              ),
              //apellido del piloto
              TextFormField(
                controller: apellidoCtrl,
                decoration: InputDecoration(
                  labelText: 'Apellido',
                  errorText: apellidoError,
                ),
              ),
              //número del auto
              TextFormField(
                controller: numeroCtrl,
                decoration: InputDecoration(
                  labelText: 'Número Auto',
                  errorText: numeroError,
                ),
                keyboardType: TextInputType.number,
              ),
              //puntaje
              TextFormField(
                controller: puntosCtrl,
                decoration: InputDecoration(
                  labelText: 'Puntos',
                  errorText: puntosError,
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
                  if (equipoSeleccionado == 0) {
                    equipoSeleccionado = equipos[0]['id'];
                  }
                  return DropdownButtonFormField<int>(
                    decoration: InputDecoration(
                      labelText: 'Equipo',
                      errorText: equipoError,
                    ),
                    value: equipos[0]['id'],
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
                  child: Text('Agregar Piloto'),
                  onPressed: () {
                    _agregarPiloto();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _agregarPiloto() async {
    //enviar datos a API
    var respuesta = await PilotosService().pilotosAgregar(
      nombreCtrl.text.trim(),
      apellidoCtrl.text.trim(),
      int.tryParse(numeroCtrl.text.trim()) ?? -1,
      int.tryParse(puntosCtrl.text.trim()) ?? -1,
      equipoSeleccionado,
    );

    if (respuesta['message'] != null) {
      var errores = respuesta['errors'];
      setState(() {
        nombreError = errores['nombre'] != null ? errores['nombre'][0] : null;
        apellidoError = errores['apellido'] != null ? errores['apellido'][0] : null;
        numeroError = errores['numero'] != null ? errores['numero'][0] : null;
        puntosError = errores['puntos'] != null ? errores['puntos'][0] : null;
        equipoError = errores['equipo_id'] != null ? errores['equipo_id'][0] : null;
      });
    } else {
      //volver a página de pilotos
      Navigator.pop(context);
    }
  }
}
