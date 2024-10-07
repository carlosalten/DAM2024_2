import 'package:f1_cliente/constants.dart';
import 'package:f1_cliente/pages/tabs/driver_agregar_page.dart';
import 'package:f1_cliente/pages/tabs/driver_editar_page.dart';
import 'package:f1_cliente/services/pilotos_service.dart';
import 'package:f1_cliente/utils/mensaje_util.dart';
import 'package:f1_cliente/widgets/driver_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class DriversTab extends StatefulWidget {
  const DriversTab({super.key});

  @override
  State<DriversTab> createState() => _DriversTabState();
}

class _DriversTabState extends State<DriversTab> {
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      floatingActionButton: FloatingActionButton(
        child: Icon(MdiIcons.plus),
        backgroundColor: Color(kPrimaryColor),
        foregroundColor: Colors.white,
        onPressed: () {
          MaterialPageRoute route = MaterialPageRoute(
            builder: (context) => DriverAgregarPage(),
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
                  return Slidable(
                    //botonera que está a la izquierda
                    startActionPane: ActionPane(
                      motion: ScrollMotion(),
                      children: [
                        SlidableAction(
                          backgroundColor: Colors.purple,
                          foregroundColor: Colors.white,
                          icon: MdiIcons.pencil,
                          label: 'Editar',
                          onPressed: (context) {
                            MaterialPageRoute route = MaterialPageRoute(
                              builder: (context) => DriverEditarPage(pilotoId: piloto['id']),
                            );
                            Navigator.push(context, route);
                          },
                        ),
                      ],
                    ),
                    //botonera que está a la derecha
                    endActionPane: ActionPane(
                      //establece la animación que ocurre al deslizar el dedo
                      motion: ScrollMotion(),
                      //botones que van en el ActionPane
                      children: [
                        SlidableAction(
                          backgroundColor: Color(kPrimaryColor),
                          foregroundColor: Colors.white,
                          icon: MdiIcons.trashCan,
                          label: 'Borrar',
                          onPressed: (context) {
                            this._confirmBorrado(context).then((aceptaBorrar) {
                              if (aceptaBorrar) {
                                setState(() {
                                  PilotosService().borrarPiloto(piloto['id']).then(
                                    (borradoOk) {
                                      if (borradoOk) {
                                        MensajeUtil.mostrarSnackbar(scaffoldKey.currentContext!, 'Piloto Borrado :)');
                                      }
                                    },
                                  );
                                });
                              }
                            });
                          },
                        ),
                      ],
                    ),
                    child: DriverTile(
                      numero: piloto['numero'],
                      nombre: piloto['nombre'],
                      apellido: piloto['apellido'],
                      equipo: piloto['equipo'] != null ? piloto['equipo']['nombre'] : 'Sin Equipo',
                      color: piloto['equipo'] != null ? int.parse('0xFF' + piloto['equipo']['color']) : 0xFF333333,
                      puntos: piloto['puntos'],
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

  //método para mostrar confirmación de borrado
  Future<dynamic> _confirmBorrado(BuildContext context) {
    return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Confirmar Borrado'),
            content: Text('Borrar Piloto?'),
            actions: [
              TextButton(
                child: Text('CANCELAR'),
                onPressed: () => Navigator.pop(context, false),
              ),
              ElevatedButton(
                child: Text('ACEPTAR'),
                onPressed: () => Navigator.pop(context, true),
              ),
            ],
          );
        });
  }
}
