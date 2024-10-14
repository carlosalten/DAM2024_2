import 'package:f1_cliente/constants.dart';
import 'package:f1_cliente/pages/tabs/constructor_agregar_page.dart';
import 'package:f1_cliente/services/constructores_service.dart';
import 'package:f1_cliente/utils/mensaje_util.dart';
import 'package:f1_cliente/widgets/constructor_tile.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ConstructorsTab extends StatefulWidget {
  const ConstructorsTab({super.key});

  @override
  State<ConstructorsTab> createState() => _ConstructorsTabState();
}

class _ConstructorsTabState extends State<ConstructorsTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(MdiIcons.plus),
        backgroundColor: Color(kPrimaryColor),
        foregroundColor: Colors.white,
        onPressed: () {
          MaterialPageRoute route = MaterialPageRoute(
            builder: (context) => ConstructorAgregarPage(),
          );
          Navigator.push(context, route).then((valor) {
            setState(() {});
          });
        },
      ),
      body: Container(
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
                  return Dismissible(
                    key: ObjectKey(equipo['id']),
                    direction: DismissDirection.endToStart,
                    onDismissed: (direction) {
                      if (direction == DismissDirection.endToStart) {
                        ConstructoresService().borrarEquipo(equipo['id']).then((borradoOk) {
                          setState(() {});
                          MensajeUtil.mostrarSnackbar(context, '${equipo['nombre']} borrado');
                        });
                      }
                    },
                    background: Container(
                      padding: EdgeInsets.only(right: 10),
                      alignment: Alignment.centerRight,
                      color: Color(kPrimaryColor),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('Borrar', style: TextStyle(color: Colors.white)),
                          Icon(
                            MdiIcons.trashCan,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                    child: ConstructorTile(
                      numero: index + 1,
                      nombre: equipo['nombre'],
                      color: int.parse('0xFF' + equipo['color']),
                      puntos: equipo['puntos'],
                      pilotos: equipo['pilotos'],
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
