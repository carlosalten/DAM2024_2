import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController emailCtrl = new TextEditingController();
  TextEditingController edadCtrl = new TextEditingController();

  String email = '';
  int edad = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejemplo Formularios'),
      ),
      //BODY
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Form(
          child: SingleChildScrollView(
            child: Column(
              children: [
                //email
                TextFormField(
                  controller: emailCtrl,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    //hintText: 'user@usm.cl',
                  ),
                ),
                //edad
                TextFormField(
                  controller: edadCtrl,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Edad',
                  ),
                ),
                //boton
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 10),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                    child: Text('Enviar'),
                    onPressed: () {
                      String email = emailCtrl.text;

                      //tryparse retorna null si lo que intenta parsear no es numero entero.
                      //si tryParse resulta ser null, cambiar por un cero.
                      int edad = int.tryParse(edadCtrl.text) ?? 0;

                      //mostrar en consola
                      //print('EMAIL:' + email + ' EDAD:' + edad.toString());
                      print('EMAIL:$email EDAD:$edad');

                      //mostrar en pantalla
                      this.email = email;
                      this.edad = edad;
                      setState(() {}); //<-- este actualiza la página
                    },
                  ),
                ),
                //Espacio para mostrar datos
                Container(
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.all(5),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue.shade50,
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Text(
                    'Email: ${this.email} \nEdad: ${this.edad}',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
