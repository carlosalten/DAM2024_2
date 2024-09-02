import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:u1_navegacion/pages/tabs/tab_audifonos.dart';
import 'package:u1_navegacion/pages/tabs/tab_celulares.dart';
import 'package:u1_navegacion/pages/tabs/tab_notebooks.dart';
import 'package:u1_navegacion/pages/tabs/tab_tablets.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({super.key});

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  final List opcionesDrawer = [
    {'titulo': 'Audífonos', 'icono': MdiIcons.headphones},
    {'titulo': 'Celulares', 'icono': MdiIcons.cellphone},
    {'titulo': 'Notebooks', 'icono': MdiIcons.laptop},
    {'titulo': 'Tablets', 'icono': MdiIcons.tablet},
  ];

  List paginas = [TabAudifonos(), TabCelulares(), TabNotebooks(), TabTablets()];
  int paginaSeleccionada = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejemplo Drawer'),
      ),
      body: paginas[paginaSeleccionada],
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/drawer_bg.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Column(
                  children: [
                    //foto usuario
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 5),
                          image: DecorationImage(
                            image: AssetImage('assets/images/user.jpg'),
                          ),
                        ),
                      ),
                    ),

                    //nombre
                    Text('Nombre Apellido', style: TextStyle(color: Colors.white))
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.separated(
                padding: EdgeInsets.only(top: 0),
                separatorBuilder: (context, index) => Divider(),
                itemCount: opcionesDrawer.length,
                itemBuilder: (context, index) {
                  var opcion = opcionesDrawer[index];
                  return ListTile(
                    leading: Icon(opcion['icono']),
                    title: Text(opcion['titulo']),
                    onTap: () => _navegar(index),
                  );
                },
              ),
            ),
            Divider(),
            ListTile(
              leading: Icon(MdiIcons.arrowLeft),
              title: Text('Cerrar'),
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }

  void _navegar(int pagina) {
    setState(() {
      this.paginaSeleccionada = pagina;
    });
    Navigator.pop(context);
  }
}
