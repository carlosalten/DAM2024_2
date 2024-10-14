import 'package:f1_cliente/services/constructores_service.dart';
import 'package:flutter/material.dart';

class ConstructorAgregarPage extends StatefulWidget {
  const ConstructorAgregarPage({super.key});

  @override
  State<ConstructorAgregarPage> createState() => _ConstructorAgregarPageState();
}

class _ConstructorAgregarPageState extends State<ConstructorAgregarPage> {
  final formKey = GlobalKey<FormState>();

  TextEditingController nombreCtrl = TextEditingController();
  TextEditingController colorCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agregar Equipo'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              //nombre del equipo
              TextFormField(
                controller: nombreCtrl,
                decoration: InputDecoration(
                  labelText: 'Nombre',
                ),
              ),
              //color del equipo
              TextFormField(
                controller: colorCtrl,
                decoration: InputDecoration(
                  labelText: 'Color',
                ),
                keyboardType: TextInputType.number,
              ),
              //botón
              Container(
                margin: EdgeInsets.only(top: 20),
                width: double.infinity,
                child: ElevatedButton(
                  child: Text('Agregar Equipo'),
                  onPressed: () {
                    ConstructoresService().equiposAgregar(
                      nombreCtrl.text.trim(),
                      colorCtrl.text.trim(),
                    );

                    //volver a página de pilotos
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
